//
//  ContentView.swift
//  HW3
//
//  Created by 林湘羚 on 2020/10/12.
//

import SwiftUI
import AVFoundation

struct TitleView:ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(Color("myFontColor"))
            .padding(.bottom, 10)
            .shadow(color: .white, radius: 2, x: -3, y: -3)
            .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
    }
}

struct starMask:ViewModifier{
    func body(content: Content) -> some View {
        content
            .mask(
                Image(systemName: "star.fill")
                    .resizable()
                    .scaledToFit()
            )
    }
}
struct breakingElementDetail{
    let name:String
    let description:String
}

struct breakingElementRow: View{
    let Element:String
    var body: some View{
        HStack{
//            Image(Element)
//                .resizable()
//                .scaledToFill()
//                .frame(width: 80, height: 80)
//                .clipped()
            Text(Element)
            Spacer()
        }
    }
}

struct breakingElementList: View{
    
    //let breakingElement:[String]=["TopRock", "FootWalk", "Power-move", "Freeze", "Flip"]
    
    let TopRockEle=[breakingElementDetail(name:"2 steps", description:"The 2 step sets the foundation for all of the basic fundamental Toprock movements."), breakingElementDetail(name:"Indian step", description: "One of the essential top rock steps which is called the Indian Step. Indian Step is a step that is also found in Salsa Dancing as well."), breakingElementDetail(name:"Shuffle", description:"【鬼步舞的起源】：\n「鬼步舞」英文稱之為“Melbourne Shuffle”中文轉譯為“墨爾本曳步舞”，原因在於這舞步是由墨爾本地下舞廳流行開來的。剛開始於1992年，在海外各地區這舞蹈名字並不統一，一直到傳到澳洲才開始將此舞蹈稱之為 “Shuffle”。舞名就被確定下來了。 2002年12月，澳大利亞一家報紙的頭版講解了Melbourne Shuffle，這是Shuffle 首次出現在主流媒體。"), breakingElementDetail(name:"Kicks", description: "Both the “Kick” and the “Skip” add variation to the basic “2 Step” and set the foundation for learning future Toprock steps")]
    
    let FootWorkEle=[breakingElementDetail(name:"6 steps", description: "B-boying, breaking, or breakdancing is a highly athletic form of street dance that originated in 1970s New York City and his since spread around the world. The 6-step is one of the first moves breakdancers learn as many other moves and variations can be constructed around it. While the 6-step's furious twisting may seem intimidating at first, it can be mastered through analyzing its parts and practicing regularly."), breakingElementDetail(name:"CC", description: "One of the early and essential footwork basics used for changing direction in different flows or the illusion of doing so.")]
    
    let PowerMoveEle=[breakingElementDetail(name:"Windmill", description: "The Windmill (or briefly Mill) is a popular b-boying move. The breaker rolls his torso continuously in a circular path on the floor, across the upper chest/shoulders/back, while twirling his legs in a V-shape through the air."), breakingElementDetail(name:"Flare", description: "The flare is an acrobatic move in which the performer alternates balancing the torso between either arm while swinging the legs beneath in continuous circles. It is a fundamental b-boying/bgirl power move, and in gymnastics it may be performed on a pommel horse or during the floor exercise. The move is commonly spelled flair in gymnastics and further may be called a \"Thomas flair\" after its originator, Kurt Thomas."), breakingElementDetail(name:"Swipe", description: "The Swipe is one of the most recognizable power moves in breakdance. The breaker leans back, whips his arms to one side to touch the ground, and his legs follow closely behind, twisting 360 degrees to land on the ground once again. An example many might remember is the swipe performed by the character Samir in the movie Office Space."), breakingElementDetail(name:"Headspin", description: "A headspin is an athletic move in which a person balances on their head while rotating along the vertical axis of their body, usually without any other form of support. The move is commonly employed in the Afro-Brazilian martial art Capoeira and in breakdancing. Though b-boy Kid Freeze is sometimes credited with having invented the headspin, the first known footage of the move is seen in the 1933 film, Wild Boys of the Road. One of the film's protagonists Edward 'Eddie' Smith, played by Frankie Darro, performs a Headspin at the 67 minute mark. There is also an older video featuring a headspin \"A Street Arab\" Thomas A. Edison, INC April 21, 1898 in which a preadolescent boy, dressed like a street urchin, performs acrobatic stunts for the camera. The dancer, Olav Thorshaug, performed Norwegian hallingdans shows in the United States of America around 1910-1920, incorporating the headspin in his dance.")]
    
    let FreezeEle=[breakingElementDetail(name:"Side-Freeze", description: "常見的定格招式之一。BBoy們在幾套幾套的動作中穿插了Freeze去對音樂，或者在Ending使用Freeze來收尾，如果音樂拍子對的準，你大概就可以看到觀眾們都瘋掉了吧！"), breakingElementDetail(name:"Chair-Freeze", description: "常見的定格招式之一。BBoy們在幾套幾套的動作中穿插了Freeze去對音樂，或者在Ending使用Freeze來收尾，如果音樂拍子對的準，你大概就可以看到觀眾們都瘋掉了吧！"), breakingElementDetail(name:"Air-Freeze", description: "常見的定格招式之一。BBoy們在幾套幾套的動作中穿插了Freeze去對音樂，或者在Ending使用Freeze來收尾，如果音樂拍子對的準，你大概就可以看到觀眾們都瘋掉了吧！"), breakingElementDetail(name:"Headstand", description: "常見的定格招式之一。BBoy們在幾套幾套的動作中穿插了Freeze去對音樂，或者在Ending使用Freeze來收尾，如果音樂拍子對的準，你大概就可以看到觀眾們都瘋掉了吧！"), breakingElementDetail(name:"Handstand", description: "常見的定格招式之一。BBoy們在幾套幾套的動作中穿插了Freeze去對音樂，或者在Ending使用Freeze來收尾，如果音樂拍子對的準，你大概就可以看到觀眾們都瘋掉了吧！")]
    
    let FlipEle=[breakingElementDetail(name:"Back-Flip", description: "Doing a backflip, also called a back-tuck, somi, or salto, is a great way to show off your flexibility and agility, but it’s also an advanced skill. During a backflip, your body makes a full 360-degree rotation in the air. Because a backflip is difficult to achieve, it will likely take you a bit of practice to master it."), breakingElementDetail(name:"Side-Flip", description: "A side flip is a popular parkour and freestyle running trick that involves using forward momentum combined with a quarter turn before leaving the ground in order to do a flip to the side where your chest and head remain facing the same direction through the duration. The directionality makes it seem slightly like an aerial cartwheel; however, the form is entirely different. With the right precautions and a lot of practice, you can learn how to do a side flip.")]
    
    var body: some View{
        List{
            Section(header:Text("ꁞTopRock").font(.custom("Taiwanicon-20", size: 20))){
                ForEach(TopRockEle.indices){(index) in
                    NavigationLink(destination: breakingElementDetailView(Element: TopRockEle[index])){
                        breakingElementRow(Element: TopRockEle[index].name)
                    }
                }
            }
            
            Section(header:Text("ꁙFootWork").font(.custom("Taiwanicon-20", size: 20))){
                ForEach(FootWorkEle.indices){(index) in
                    NavigationLink(destination: breakingElementDetailView(Element: FootWorkEle[index])){
                        breakingElementRow(Element:FootWorkEle[index].name)
                    }
                }
            }

            Section(header:Text("ꁈPower-move").font(.custom("Taiwanicon-20", size: 20))){
                ForEach(PowerMoveEle.indices){(index) in
                    NavigationLink(destination: breakingElementDetailView(Element: PowerMoveEle[index])){
                        breakingElementRow(Element:PowerMoveEle[index].name)
                    }
                }
            }

            Section(header:Text("ꁅFreeze").font(.custom("Taiwanicon-20", size: 20))){
                ForEach(FreezeEle.indices){(index) in
                    NavigationLink(destination: breakingElementDetailView(Element: FreezeEle[index])){
                        breakingElementRow(Element: FreezeEle[index].name)
                    }
                }
            }

            Section(header:Text("ꀍFlip").font(.custom("Taiwanicon-20", size: 20))){
                ForEach(FlipEle.indices){(index) in
                    NavigationLink(destination: breakingElementDetailView(Element: FlipEle[index])){
                        breakingElementRow(Element: FlipEle[index].name)
                    }
                }
            }
        }
    }
}

struct breakingElementDetailView: View{ //picture取為ex:TopRock1, TopRock2...
    let Element:breakingElementDetail
    
    var body: some View{
        
        List{
            ScrollView(.horizontal){    //picture
                let rows=[GridItem()]
                LazyHGrid(rows: rows){
                    ForEach(1..<4){(index) in
                        VStack{
                            ImageView(str:Element.name+"\(index)", size:300)
                        }
                    }
                }
            }
            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

            Context(context:Element.description)
        }
    }
}

struct ContentView: View {
    @State private var show2=false
    @State private var rotateDegree:Double=0
    @State private var play:String="play.circle.fill"
    @State private var music=true
    
    init() {
            UITextView.appearance().backgroundColor = .clear
        }
    let player=AVPlayer()
    
    var body: some View {
        TabView{
            TabView{    //嘻哈
                ZStack{
                    Image("bboyBackground")
                        .resizable()
                        .opacity(0.8)
                    HStack{
                        Text("Bboy music")
                            .padding(.leading, 10)
                        Spacer()
                        Button(action:{
                            if music{
                                music=false
                                play="pause.fill"
                                player.play()
                            }
                            else{
                                music=true
                                play="play.circle.fill"
                                player.pause()
                            }
                        }){
                            Image(systemName:play)
                                .resizable()
                                .scaledToFit()
                                .frame(width:50, height:50)
                                .colorMultiply(.black)
                        }
                    }
                    .background(Color(red:192/255, green:192/255, blue:192/255, opacity:0.5))
                    .offset(x:0, y:-UIScreen.main.bounds.height/2+100)
                    VStack{
                        VStack{
                            if show2{
                                Text("Choose your App icon")
                                    .modifier(TitleView())
                                    .transition(.scale(scale:2))
                            }
                        }
                            .animation(
                                Animation.easeInOut(duration:3)
                            )
                            .onAppear{
                                show2=true
                            }
                        HStack{
                            Button(action:{
                                    UIApplication.shared.setAlternateIconName(nil)}){
                                Image("AppIcon1")
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(color: .black, radius: 10, x: 3, y: 3)
                            }

                            Button(action:{
                                    UIApplication.shared.setAlternateIconName("AppIcon2")}){
                                Image("AppIcon2")
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(color: .black, radius: 10, x: 3, y: 3)
                            }

                            Button(action:{
                                    UIApplication.shared.setAlternateIconName("AppIcon3")}){
                                Image("AppIcon3")
                                    .resizable()
                                    .scaledToFit()
                                    .shadow(color: .black, radius: 10, x: 3, y: 3)
                            }
                        }
                        .frame(height: 200)
                    }
                }
                
                ZStack{     //breaking
                    Image("bboyBackground")
                        .resizable()
                        .opacity(0.8)
                    HStack{
                        Text("Bboy music")
                            .padding(.leading, 10)
                        Spacer()
                        Button(action:{
                            if music{
                                music=false
                                play="pause.fill"
                                player.play()
                            }
                            else{
                                music=true
                                play="play.circle.fill"
                                player.pause()
                            }
                        }){
                            Image(systemName:play)
                                .resizable()
                                .scaledToFit()
                                .frame(width:50, height:50)
                                .colorMultiply(.black)
                        }
                    }
                    .background(Color(red:192/255, green:192/255, blue:192/255, opacity:0.5))
                    .offset(x:0, y:-UIScreen.main.bounds.height/2+100)
                    VStack{
                        Text("霹靂舞")
                            .modifier(TitleView())

                        Context(context:"地板舞（Breaking）又稱為霹靂舞，是嘻哈文化的一員。如同其他的嘻哈文化，地板舞也大量借用其他文化的成份，包括競技體操、街舞、非洲裔巴西文化、迪斯可、中國武術、俄羅斯土風舞，以及詹姆士·布朗、麥可·傑克森的舞步與加州的放克風格。\n\n比較值得注意的是，早期跳地板舞的舞者多為拉丁裔美國人，而不是非洲裔美國人，然而他們當初偏好的音樂風格卻大大影響至今嘻哈音樂。地板舞的表現形式有很多，有頭轉、側頭刷、風車、單手跳、手轉等等，而且姿態優美，節奏感強烈，速度快，在青少年中很受歡迎。")
                            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                    }
                }
                ZStack{
                    Image("bboyBackground")
                        .resizable()
                        .opacity(0.8)
                    
                    let breakingElements:[String]=["TopRock", "FootWalk", "Power-move", "Freeze", "Flip"]
                
                    VStack{
//                        HStack{
//                            Text("Bboy music")
//                                .padding(.leading, 10)
//                            Spacer()
//                            Button(action:{
//                                if music{
//                                    music=false
//                                    play="pause.fill"
//                                    player.play()
//                                }
//                                else{
//                                    music=true
//                                    play="play.circle.fill"
//                                    player.pause()
//                                }
//                            }){
//                                Image(systemName:play)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width:50, height:50)
//                                    .colorMultiply(.black)
//                            }
//                        }
//                        .background(Color(red:192/255, green:192/255, blue:192/255, opacity:0.5))
//                        .offset(x:0, y:-UIScreen.main.bounds.height/2+200)
                        Text("breaking五大元素")
                            .modifier(TitleView())
                        ScrollView{
                            ForEach(breakingElements, id:\.self){(message) in
                                HStack{
                                    Image(systemName:"star")
                                    Text(message)
                                        .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
                                        .foregroundColor(Color("myFontColor"))
                                        .shadow(color: .white, radius: 2, x: -3, y: -3)
                                        .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
                                    Spacer()
                                }
                                .padding([.leading, .trailing], 10)
                                Divider()
                            }
                        }
                    }
                }
                
            }.tabViewStyle(PageTabViewStyle())
                .tabItem{
                    Image(systemName:"house")
                    Text("嘻哈")
                }
            //breaking
            NavigationView{
                breakingElementList()
                    .navigationTitle("breaking元素")
            }
                .tabItem{
                    Image(systemName:"applescript")
                    Text("Breaking")
                }
            VStack{     //Dancer
                Text("Iconic bboy / bgirl")
                    .modifier(TitleView())
                ScrollView(.vertical){
                    let dancers:[String]=["RM", "Crazy Legs", "Ken Swift", "RoxRite", "Wayne Frost", "Michael Chambers", "Shabba Doo", "Taisuke", "Lucinda Dickey", "Salah", "Robert Muraine", "Tommy the Clown", "Jay Park", "Froz", "Junior", "Raphael Xavier"]
                    let columns=[GridItem(), GridItem(), GridItem()]
                    LazyVGrid(columns: columns){
                        ForEach(dancers.indices){(index) in

                            VStack{
                                Rectangle()
                                    .overlay(
                                        Image("Dancer\(index)")
                                            .resizable()
                                            .scaledToFill()
                                    )
                                    .frame(height:150)
                                    .clipShape(Circle())
                                    .shadow(color: .black, radius: 10, x: 3, y: 3)
                                Spacer()
                                Text(dancers[index])
                                    .foregroundColor(Color("myFontColor"))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .shadow(color: .white, radius: 2, x: -3, y: -3)
                                    .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
                            }
                            .background(Color(red:1, green:1, blue:1, opacity: 0))
                            .frame(height:200)
                        }
                    }
                }
            }
            .background(LinearGradient(gradient:Gradient(colors:[Color.gray, Color.white]), startPoint: .top, endPoint: .bottom))
                .tabItem{
                    Image(systemName:"person")
                    Text("Dancer")
                }
            VStack{
                let titles:[String]=["Hertz vs RM | Top16 | Taipei Bboy City\n 2020 Fight Covid19 Livestream","Massive Monkees vs Jinjo Crew | \nR16 BBOY Battle 2012 | YAK FILMS", "Amazing Moments at \nBATTLE OF THE YEAR 2019 // .stance","Exhibition Battle: Red Bull Dancers vs \nTeam France | Red Bull Dance Tour France 2020",  "FLOORRIORZ vs RED BULL\n BC ONE ALL STAR | Round 3 of Battle\n @ 2020 BBIC WORLD FINAL Day-2 | LB-PIX"]
                let links:[String]=["https://www.youtube.com/watch?v=cwLmIsgAiGU","https://www.youtube.com/watch?v=-kT0HJhm5ck",  "https://www.youtube.com/watch?v=1c8eKUlFbhk","https://www.youtube.com/watch?v=DqZNxPktbSE",  "https://www.youtube.com/watch?v=kBDhIkUNYZ8"]
                Spacer()
                ScrollView(.horizontal){
                    let rows=[GridItem()]
                    LazyHGrid(rows:rows){
                        ForEach(titles.indices){(index) in
                            VStack{
                                Link(destination:URL(string:links[index])!, label:{
                                    VStack{
                                        ImageView(str:"battle\(index)", size:UIScreen.main.bounds.width-10)
                                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                                        Text(titles[index])
                                            .foregroundColor(Color("myFontColor"))
                                            .shadow(color: .white, radius: 2, x: -3, y: -3)
                                            .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
                                    }
                                })
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
            }
            .background(LinearGradient(gradient:Gradient(colors:[Color.gray, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .tabItem{
                    Image(systemName:"video")
                    Text("Video")
                }
            .onAppear{
                let utterance=AVSpeechUtterance(string:"Click and watch the video")
                utterance.pitchMultiplier = 1
                utterance.rate = 0.3
                let synthesizer = AVSpeechSynthesizer()
                synthesizer.speak(utterance)
            }
            VStack{
                HStack{
                    ZStack{
                        Image("movie")
                            .resizable()
                            .scaledToFit()
                            .frame(width:UIScreen.main.bounds.width/2-10)
                            .clipped()
                            .colorInvert()
                            .rotationEffect(.degrees(20))
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                        Image("movie")
                            .resizable()
                            .scaledToFit()
                            .frame(width:UIScreen.main.bounds.width/2-10)
                            .clipped()
                            .contrast(3)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                    }
                    .padding(.leading, 10)
                    Divider()
                    Context(context:"《舞力全開系列》電影系列是舞蹈愛情類電影，其第一部舞出真我是由安妮·弗萊徹和米克·戈德堡執導並於2006年上映，第二部舞力全開和第三部舞力全開3D均由朱浩偉執導，朱浩偉也參與了舞力全開4 3D的相關製作。")
                }
                Divider()
                HStack{
                    Context(context:"雖然該系類獲得毀譽參半的評價但是商業化十分成功，電影全球賣座並獲得了5.64億美元多的票房。第六部電影採用全中國演員，並已於2019年騰訊視頻首播。")
                    Divider()
                    ZStack{
                        Image("movie")
                            .resizable()
                            .scaledToFit()
                            .frame(width:UIScreen.main.bounds.width/2-10)
                            .clipped()
                            .brightness(0.5)
                            .rotationEffect(.degrees(20))
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                        Image("movie")
                            .resizable()
                            .scaledToFit()
                            .frame(width:UIScreen.main.bounds.width/2-10)
                            .clipped()
                            .colorMultiply(Color.gray)
                            .shadow(color: .black, radius: 10, x: 3, y: 3)
                    }
                    .padding(.trailing, 10)
                }
            }
            .tabItem{
                Image(systemName:"play.rectangle")
                Text("Movie")
            }
        }
        .onAppear{
            let fileUrl=Bundle.main.url(forResource:"Bboy Music Mixtape 2019_02_14 (128 kbps)", withExtension:"mp3")!
            let playerItem=AVPlayerItem(url:fileUrl)
            player.replaceCurrentItem(with:playerItem)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

struct Context: View {
    let context:String
    var body: some View {
        TextEditor(text:.constant(context))
            .foregroundColor(Color("myFontColor"))
            .frame(height:300)
            .background(Color(red:1, green:1, blue:1, opacity:0.2))
            .accentColor(.clear)
            .shadow(color: .white, radius: 2, x: -3, y: -3)
            .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
    }
}

struct ImageView: View {
    let str:String
    let size:CGFloat
    var body: some View {
        Image(str)
            .resizable()
            .scaledToFill()
            .frame(width:size, height:size)
            .clipped()
    }
}

