//
//  AddBookView.swift
//  Bookworm
//
//  Created by Matthew Richardson on 30/8/20.
//  Copyright © 2020 Matthew Richardson. All rights reserved.
//

import SwiftUI

struct AddBookView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @State private var title = ""
    @State private var author = ""
    @State private var rating = 3
    @State private var genre = ""
    @State private var review = ""
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Name of book", text: $title)
                    TextField("Author", text: $author)
                
                    Picker("Genre", selection: $genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section {
                    Picker("Rating", selection: $rating) {
                        ForEach(0..<6) {
                            Text("\($0)")
                        }
                    }
                    
                    TextField("Wriate a review", text: $review)
                }
                
                Section {
                    Button("Save") {
                        
                    }
                }
            }
            .navigationBarTitle("Add Book")
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView()
    }
}
