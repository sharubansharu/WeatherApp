//
//  ContentView.swift
//  WeatherApp
//
//  Created by Sharuban Sharu on 8/5/24.
//

import SwiftUI

struct ContentView: View {
 
    @State var isDayTime: Bool = true
    
    var body: some View {
        
        ZStack {
            
            LinearGradient(
                gradient: Gradient(
                    colors: [
                        isDayTime ? Color.blue : Color.black,
                        isDayTime ? Color("lightBlue") : Color.gray
                    ]
                ),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("London")
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                
                VStack (spacing: 10) {
                    Image(systemName: isDayTime ? "cloud.sun.fill" : "moon.stars.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200 )
                    
                    Text("20°")
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                }
                
                HStack(spacing: 15) {
                    
                    DayWeatherContainer(dayName: "MON", imageName: "cloud.sun.fill", degreesTemperature: 23)
                    
                    DayWeatherContainer(dayName: "TUE", imageName: "sun.max.fill", degreesTemperature: 30)
                    
                    DayWeatherContainer(dayName: "WED", imageName: "wind.snow", degreesTemperature: 18)
                    
                    DayWeatherContainer(dayName: "THU", imageName: "sunset.fill", degreesTemperature: 23)
                    
                    DayWeatherContainer(dayName: "FRI", imageName: "snow", degreesTemperature: 3)
                    
                    DayWeatherContainer(dayName: "SAT", imageName: "cloud.sun.fill", degreesTemperature: 28)
                        
                }
                
                Spacer()
                
                Button(action: {
                    if isDayTime == true {
                        isDayTime = false
                    } else {
                        isDayTime = true
                    }
                    
                }, label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold))
                        .cornerRadius(10)
                })
                
                Spacer()
            }
        }
        
        
        
    }
}

#Preview {
    ContentView()
}

struct DayWeatherContainer: View {
    
    let dayName: String
    let imageName: String
    let degreesTemperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(dayName)
                .font(.system(size: 20))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
            
            
            Text("\(degreesTemperature)°")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}



/* VStack {
    Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
    Text("Hello, world!")
}
.padding() */

/* ZStack {
    Color(.blue)
        .edgesIgnoringSafeArea(.all)
} */

/* Text("London")
    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    .bold()

Text("London")
    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    .fontWeight(.heavy) */

/* Text("   London    ")
  .font(.system(size: 32))
  .foregroundColor(.white)
  .background(Color(.red)) */

/* Text("London")
  .font(.system(size: 32))
  .foregroundColor(.white)
  .background(Color(.red))
  .frame(width: 250, height: 250) */

/* Text("London")
  .font(.system(size: 32))
  .foregroundColor(.white)
  .frame(width: 250, height: 100)
  .background(Color(.red))
  .cornerRadius(10) */

/*  ZStack {
    LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/,
                   startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                  .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
     
     Text("London")
         .font(.system(size: 32))
         .foregroundColor(.white)
         .frame(width: 250, height: 100)
         .background(Color(.red))
 } */

/* LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
 startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/,
 endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) */

/* LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
 startPoint: .topLeading,
 endPoint: .bottomTrailing)
.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/) */

/* how to code degree " ° " -> combine key "option" key "shift" key "8" */

/*  ZStack {
 
 LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
     .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
  
  VStack {
      Text("London")
          .font(.system(size: 32))
          .foregroundColor(.white)
      
      Image(systemName: "cloud.sun.rain.fill")
          .renderingMode(.original)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 200, height: 200 )
          .background(Color(.red))
      
      Text("20°")
          .font(.system(size: 36))
          .foregroundColor(.white)
      
      Spacer()
      
  }
  
}  */

/*  ZStack {
 
 LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
     .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
  
  VStack(spacing: 100) {
      Text("London")
          .font(.system(size: 32))
          .foregroundColor(.white)
      
      VStack (spacing: 10) {
          Image(systemName: "cloud.sun.fill")
              .renderingMode(.original)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(width: 200, height: 200 )
          
          Text("20°")
              .font(.system(size: 36))
              .foregroundColor(.white)
      }
      
      HStack{
          VStack {
              Text("TUE")
              
              Image(systemName: "cloud.sun.fill")
              
              Text("20°")
          }
          .background(Color(.red))
          
          VStack {
              Text("TUE")
              
              Image(systemName: "cloud.sun.fill")
              
              Text("20°")
          }
          .background(Color(.green))
      }
      
      Text("London")
      
      Spacer()
  }
}  */

/*  import SwiftUI
 
 struct ContentView: View {
     
     var body: some View {
         
         ZStack {
             
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
             
             VStack(spacing: 100) {
                 Text("London")
                     .font(.system(size: 32))
                     .foregroundColor(.white)
                 
                 VStack (spacing: 10) {
                     Image(systemName: "cloud.sun.fill")
                         .renderingMode(.original)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 200, height: 200 )
                     
                     Text("20°")
                         .font(.system(size: 36))
                         .foregroundColor(.white)
                 }
                 
                 HStack{
                     
                     DayWeatherContainer()
                     
                     DayWeatherContainer()
                     
                     DayWeatherContainer()
                     
                     DayWeatherContainer()
                     
                     DayWeatherContainer()
                     
                     DayWeatherContainer()
                         
                 }
                 
                 Spacer()
             }
         }
         
         
         
     }
 }

 #Preview {
     ContentView()
 }

 struct DayWeatherContainer: View {
     var body: some View {
         VStack {
             Text("WED")
             
             Image(systemName: "cloud.fill")
             
             Text("23°")
         }
     }
 }  */

/*  HStack{
 
 DayWeatherContainer(dayName: "MON", imageName: "cloud.sun.fill", degreesTemperature: 23)
 
 DayWeatherContainer(dayName: "TUE", imageName: "sun.max.fill", degreesTemperature: 33)
 
 DayWeatherContainer(dayName: "WED", imageName: "wind.snow", degreesTemperature: 8)
 
 DayWeatherContainer(dayName: "THU", imageName: "sunset.fill", degreesTemperature: 23)
 
 DayWeatherContainer(dayName: "FRI", imageName: "snow", degreesTemperature: 3)
 
 DayWeatherContainer(dayName: "SAT", imageName: "cloud.sun.fill", degreesTemperature: 31)
     
}  
 
 struct DayWeatherContainer: View {
     
     let dayName: String
     let imageName: String
     let degreesTemperature: Int
     
     var body: some View {
         VStack {
             Text(dayName)
             
             Image(systemName: imageName)
             
             Text("\(degreesTemperature)°")
         }
     }
 }  */



/*  import SwiftUI
 
 struct ContentView: View {
     
     var body: some View {
         
         ZStack {
             
             LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
             .edgesIgnoringSafeArea(.all)
             
             VStack(spacing: 40) {
                 Text("London")
                     .font(.system(size: 32))
                     .foregroundColor(.white)
                 
                 VStack (spacing: 10) {
                     Image(systemName: "cloud.sun.fill")
                         .renderingMode(.original)
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 200, height: 200 )
                     
                     Text("20°")
                         .font(.system(size: 36))
                         .foregroundColor(.white)
                 }
                 
                 HStack(spacing: 15) {
                     
                     DayWeatherContainer(dayName: "MON", imageName: "cloud.sun.fill", degreesTemperature: 23)
                     
                     DayWeatherContainer(dayName: "TUE", imageName: "sun.max.fill", degreesTemperature: 33)
                     
                     DayWeatherContainer(dayName: "WED", imageName: "wind.snow", degreesTemperature: 8)
                     
                     DayWeatherContainer(dayName: "THU", imageName: "sunset.fill", degreesTemperature: 23)
                     
                     DayWeatherContainer(dayName: "FRI", imageName: "snow", degreesTemperature: 3)
                     
                     DayWeatherContainer(dayName: "SAT", imageName: "cloud.sun.fill", degreesTemperature: 31)
                         
                 }
                 
                 Spacer()
                 
                 Button(action: {
                     print("Button Tapped")
                 }, label: {
                     Text("Change Day Time")
                         .frame(width: 280, height: 50)
                         .background(.white)
                         .font(.system(size: 20, weight: .bold))
                         .cornerRadius(10)
                 })
                 
                 Spacer()
             }
         }
         
         
         
     }
 }

 #Preview {
     ContentView()
 }

 struct DayWeatherContainer: View {
     
     let dayName: String
     let imageName: String
     let degreesTemperature: Int
     
     var body: some View {
         VStack(spacing: 10) {
             Text(dayName)
                 .font(.system(size: 20))
                 .foregroundColor(.white)
             
             Image(systemName: imageName)
                 .renderingMode(.original)
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 35, height: 35)
             
             
             Text("\(degreesTemperature)°")
                 .font(.system(size: 20))
                 .foregroundColor(.white)
         }
     }
 }   */


/*  import SwiftUI
 
 struct ContentView: View {
  
     @State var isDayTime: Bool = true
     
     var body: some View {
         
         ZStack {
             
             if isDayTime == true {
                 print("IsDayTime is True")
             } else {
                 print("IsDayTime is False")
             }
             
             isDayTime == true ? print("IsDayTime is True") : print("IsDayTime is False")
 
 
 Button(action: {
     isDayTime = false
 }, label: {
     Text("Change Day Time")
         .frame(width: 280, height: 50)
         .background(.white)
         .font(.system(size: 20, weight: .bold))
         .cornerRadius(10)
 })  */



/*  struct ExtractedView: View {
     var body: some View {
         Text("WED")
     }
 }  */






















