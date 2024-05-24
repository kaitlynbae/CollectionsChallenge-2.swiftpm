import SwiftUI

struct ContentView: View {
    
    @State var index: Int?
    @State var removedMovie: String = "Removed Movie"
    
    // MARK: MVP - Part I
    @State var myFavoriteMovies = ["Ratatouille", "Spider-Man Into the Spider Verse", "Iron Man","Fantastic Mr.Fox", "Coraline"]
    @State var myMovieRatings = ["Ratatouille":5, "Spider-Man Into the Spider Verse":4,"Iron Man":4, "Fantastic Mr.Fox":5, "Coraline":4]
    
    
    var body: some View {
        
        Group {
            Divider()
            Text("Collections Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
        
        //MARK: MVP - Part II
        
        Text("\("5") Movies")
            .font(.title3)
        
        List { 
            
            Section {
                //TODO: MVP - Part I
                ForEach(0..<myFavoriteMovies.count, id: \.self) { value in
                    Text(myFavoriteMovies[value])
                }
            } header: {
                Text("Array")
            }
            
            Section {
                //TODO: MVP - Part II
                ForEach(myMovieRatings.sorted(by: >), id: \.key) { key, count in
                   HStack {
                        Text(key)
                        ForEach(0..<count, id: \.self) { _ in
                            Image(systemName: "star")
                                .foregroundColor(.yellow)
                        }
                   }
                }            
            } header: {
                Text("Dictionary")
            }
        }
        VStack(spacing: 10) {
            Button(action: {
                //MARK: Stretch #1
                myFavoriteMovies.append("")
                myMovieRatings[""] = 0
                
                
                
                
            }, label: {
                Text("Stretch #1")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
            })
            
            Button(action: {
                //MARK: Stretch #2
                
                
                
                
                
            }, label: {
                Text("Stretch #2")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
            })
            
            Button(action: {
                //MARK: Stretch #3
                
                
                
                
                
                
            }, label: {
                Text("Stretch #3")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(.gray)
                    .clipShape(Capsule())
                
            })
            
        }
        .padding()
        
        HStack {
            TextField("Enter Index #", value: $index, format: .number)
                .textFieldStyle(.roundedBorder)
                .frame(maxWidth: .infinity)
            
            Text(removedMovie)
                .frame(maxWidth: .infinity)
        }
        .padding()
        
        Group {
            Image("MobileMakersEduNB")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
        }
        .padding()
    }
}
