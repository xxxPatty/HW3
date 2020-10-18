//
//  ContentView.swift
//  HW3
//
//  Created by 林湘羚 on 2020/10/12.
//

import SwiftUI
import AVFoundation

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
    
    let breakingElement:[String]=["TopRock", "FootWalk", "Power-move", "Freeze", "Flip"]
    
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
                            Image(Element.name+"\(index)")
                                .resizable()
                                .scaledToFill()
                                .frame(width:100, height: 100)
                                .clipped()
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
    @State private var moveDistance:CGFloat=0
    @State private var show=false
    @State private var rotateDegree:Double=0
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
                        .onAppear{
                            let fileUrl=Bundle.main.url(forResource:"Bboy Music Mixtape 2019_02_14 (128 kbps)", withExtension:"mp3")!
                            let playerItem=AVPlayerItem(url:fileUrl)
                            player.replaceCurrentItem(with:playerItem)
                        }
                    Button(action:{
                        if music{
                            music=false
                            player.play()
                        }
                        else{
                            music=true
                            player.pause()
                        }
                    }){
                        Image("music")
                            .resizable()
                            .scaledToFit()
                            .frame(width:150, height:150)
                            .clipped()
                    }
                    .position(x:UIScreen.main.bounds.width-50, y:50)
                    VStack{
                        Title(title:"Choose your App icon")
                        HStack{
                            Button(action:{
                                    UIApplication.shared.setAlternateIconName(nil)}){
                                Image("AppIcon1")
                                    .resizable()
                                    .scaledToFit()
                            }

                            Button(action:{
                                    UIApplication.shared.setAlternateIconName("AppIcon2")}){
                                Image("AppIcon2")
                                    .resizable()
                                    .scaledToFit()
                            }

                            Button(action:{
                                    UIApplication.shared.setAlternateIconName("AppIcon3")}){
                                Image("AppIcon3")
                                    .resizable()
                                    .scaledToFit()
                            }
                        }
                        .frame(height: 200)
                    }
                }
                ZStack{
                    Image("bboyBackground")
                        .resizable()
                    VStack{
                        Title(title:"嘻哈歷史")
                        
                        Context(context:"嘻哈（英語：Hip hop），是1970年代源自紐約市南布朗克斯與哈林區的非洲裔及拉丁裔青年之間的一種邊緣性次文化，繼而發展壯大成為新興藝術型態，並席捲全球。嘻哈包含饒舌、DJ、地板霹靂舞及塗鴉四大要素。另外，亦衍生出節奏口技、嘻哈時裝、嘻哈俗俚語等次文化。")
                    }
                    VStack{
                        if show{
                            Image("animation2")
                                .resizable()
                                .scaledToFit()
                                .frame(height:50)
                                .transition(.opacity)
                        }
                    }
                    .animation(
                        Animation.easeInOut(duration:5)
                            .repeatCount(3, autoreverses: false)
                    )
                    .onAppear{
                        show=true
                    }
                    .position(x:UIScreen.main.bounds.width-100, y:50)
                    
                }
                
                ZStack{ //rap
                    Image("bboyBackground")
                        .resizable()
                    VStack{
                        Title(title:"饒舌")
                        
                        Context(context:"饒舌，是指「說話或叫喊著押韻歌詞，並使用強烈的節奏作為伴奏」。它可以被分解成幾個不同元素，如「內容」、「暢流度」（節奏和韻律）和「呈現方式」。饒舌有別於吟誦詩歌之處，是在於它必須密切配合音樂的節拍。饒舌的英文字源「rap」，代表快速使用俚語演講，或是比曲式早一步呈現的即席應答。饒舌這種表演方式，在古非洲文化裡即有蹤跡；而在當代的非洲裔美國人社群裡，以口頭雜技敍述歷史或涉及押韻的鬪嘴也是頗為常見。\n\n饒舌歌手，又稱rapper或者MC。關於MC一稱的起源有多種說法，有一部分人認為它來自於Master of Ceremonies，還有人認為它是Microphone Controller，也有人認為emcee才是MC的出處。")
                    }
                    
                    VStack{
                        Button("動動"){
                            if moveDistance>UIScreen.main.bounds.width-100{
                                moveDistance=0
                            }
                            else{
                                moveDistance+=50
                            }
                        }
                        GeometryReader{ geometry in
                            Image("animation1")
                                .resizable()
                                .scaledToFit()
                                .frame(height:50)
                                .offset(x:moveDistance)
                                .animation(
                                    Animation.spring()
                                        .repeatCount(3, autoreverses: false)
                                )
                        }
                    }
                }
                
                ZStack{     //DJ
                    Image("bboyBackground")
                        .resizable()
                    VStack{
                        Title(title:"DJ")
                        
                        Context(context:"在嘻哈中「刷碟」（DJ，通俗稱之為轉碟子的人）把轉碟子視為一種音樂上的樂器藝術。卡帶／收集冊，作為工具用來產生許多不同風格的音樂。一些技術包括切音、刮擦、身體上的trick、掉針、混合或多種混合都被使用。\n\n一般上來說，DJ將會同時的使用二個唱盤。它連接著一個接收器、一個喇叭筒、揚聲器、混合器（或化音器）和各種其他不同的電子音樂儀器。DJ在兩個正在旋轉的唱片之間用以上列出的方法進行演出。結果是會產生一種獨特的聲音，即兩首不相干的歌曲看上去仿佛被合成一氣。因此DJ和音樂製作人不應該被人們混淆。（雖然在二個角色之間有相當的重疊\n\n知名的DJ有閃耀大師、非洲班巴塔、魔術先生、DJ傑西·傑夫、來自EPMD的DJ史克雷奇等人。\n\n過去嘻哈是主要用來使得你的聽眾一起來跳舞。在歐洲，這種觀念比美國更持久，在那兒MC很快地變成嘻哈的焦點中心。由於新的文化覺醒，一些DJ進一步探究了旋轉卡帶藝術，創造了現場轉盤。\n\n全名為Disc Jockey，譯為「唱片騎師」；起初DJ通俗稱之為轉碟子的人，把轉碟子視為一種音樂上的樂器藝術（他是一種職業，而不是一種音樂）。 ... 早在1979年，「Technics」出產了第一台專業的唱盤機，為DJ這一特殊的行業奠定了基礎")
                    }
                    
                    VStack{
                        Button("轉轉"){
                            rotateDegree=360
                        }
                        Image("animation3")
                            .resizable()
                            .scaledToFit()
                            .frame(height:50)
                            .rotationEffect(.degrees(rotateDegree))
                            .animation(
                                Animation.linear(duration:5)
                                    .repeatForever(autoreverses: false)
                            )
                    }
                    .position(x:UIScreen.main.bounds.width-100, y:50)
                }
                
                ZStack{     //breaking
                    Image("bboyBackground")
                        .resizable()
                    VStack{
                        Title(title:"霹靂舞")
                        
                        Context(context:"地板舞（Breaking）又稱為霹靂舞，是嘻哈文化的一員。如同其他的嘻哈文化，地板舞也大量借用其他文化的成份，包括競技體操、街舞、非洲裔巴西文化、迪斯可、中國武術、俄羅斯土風舞，以及詹姆士·布朗、麥可·傑克森的舞步與加州的放克風格。\n\n比較值得注意的是，早期跳地板舞的舞者多為拉丁裔美國人，而不是非洲裔美國人，然而他們當初偏好的音樂風格卻大大影響至今嘻哈音樂。地板舞的表現形式有很多，有頭轉、側頭刷、風車、單手跳、手轉等等，而且姿態優美，節奏感強烈，速度快，在青少年中很受歡迎。")
                    }
                }
                
                ZStack{     //graffiti
                    Image("bboyBackground")
                        .resizable()
                    VStack{
                        Title(title:"塗鴉")
                        
                        Context(context:"大約在1960年代後期的美國，塗鴉開始被政治活動家當作一種新的表達方式；此外，也有一些幫派例如野人骷髏幫（Savage Skulls）、家族幫（La Familia）和野人遊民幫（Savage Nomads）等，用它來標記勢力範圍。到了1960年代末，費城塗鴉創作家頂貓（Top Cat）、酷伯爵（Cool Earl）和玉米麵包（Cornbread）的簽名式圖案開始出現。\n\n1970至71年左右，塗鴉創新中心移至紐約市，在那裡創作者追隨著塔基183（TAKI183）和崔西168（Tracy 168）的風格，將他們所居住的街道編號寫在筆名後面，以作品大肆「轟炸」了整列火車，令人印象深刻，甚至無孔不入地讓「全城」的地鐵系統都一併淪陷。\n\n泡泡字體最初是從布朗克斯的創作群中開始興起，然而布魯克林風格更加精細，創作者崔西168甚至被稱為「狂野派」而奠定藝術價值。1970年代的塗鴉趨勢創造者包括唐迪、富圖拉2000、李·奎諾尼斯及柴費爾等藝術家。\n\n塗鴉和嘻哈文化的關係起源於早期的塗鴉藝術家多同時從事嘻哈文化的其他領域。塗鴉被理解為饒舌音樂的視覺表達方式，就像地板舞被視為它的一種身體表達方式。1983年的電影《狂野風格》被普遍認為是第一部嘻哈電影，片中該時期的紐約塗鴉場景刻畫出令人印象深刻的視覺效果。書籍《地鐵藝術》和紀錄片《風格戰爭》也是第一波嘻哈塗鴉介紹給主流大眾的出版品。如今塗鴉仍然是嘻哈文化的一部分，然而已經跨入主流藝術界，並在世界各地有名望的畫廊中展出。")
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
                Title(title:"Iconic bboy / bgirl")
                
                ScrollView(.vertical){
                    let dancers:[String]=["RM", "Crazy Legs", "Ken Swift", "RoxRite", "Wayne Frost", "Michael Chambers", "Shabba Doo", "Taisuke", "Lucinda Dickey", "Salah", "Robert Muraine", "Tommy the Clown", "Jay Park", "Froz", "Junior", "Raphael Xavier"]
                    let columns=[GridItem(), GridItem(), GridItem(), GridItem()]
                    LazyVGrid(columns: columns){
                        ForEach(dancers.indices){(index) in

                            VStack{
                                Rectangle()
                                    .overlay(
                                        Image("Dancer\(index)")
                                            .resizable()
                                            .scaledToFit()
                                    )
                                    .frame(height:150)
                                    .clipShape(Circle())
                                Spacer()
                                Text(dancers[index])
                                    .foregroundColor(Color("myFontColor"))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .background(Color(red:1, green:1, blue:1, opacity: 0))
                            .frame(height:200)
                        }
                    }
                }
            }
            .background(LinearGradient(gradient:Gradient(colors:[Color.black, Color.white]), startPoint: .top, endPoint: .bottom))
                .tabItem{
                    Image(systemName:"person")
                    Text("Dancer")
                }
            VStack{
                let titles:[String]=["Hertz vs RM | Top16 | Taipei Bboy City\n 2020 Fight Covid19 Livestream","Massive Monkees vs Jinjo Crew | \nR16 BBOY Battle 2012 | YAK FILMS", "Amazing Moments at \nBATTLE OF THE YEAR 2019 // .stance","Exhibition Battle: Red Bull Dancers vs \nTeam France | Red Bull Dance Tour France 2020",  "FLOORRIORZ vs RED BULL\n BC ONE ALL STAR | Round 3 of Battle\n @ 2020 BBIC WORLD FINAL Day-2 | LB-PIX"]
                let links:[String]=["https://www.youtube.com/watch?v=cwLmIsgAiGU","https://www.youtube.com/watch?v=-kT0HJhm5ck",  "https://www.youtube.com/watch?v=1c8eKUlFbhk","https://www.youtube.com/watch?v=DqZNxPktbSE",  "https://www.youtube.com/watch?v=kBDhIkUNYZ8"]
                ScrollView(.horizontal){
                    let rows=[GridItem()]
                    LazyHGrid(rows:rows){
                        ForEach(titles.indices){(index) in
                            VStack{
                                Link(destination:URL(string:links[index])!, label:{
                                    VStack{
                                        Text(titles[index])
                                
                                        Image("battle\(index)")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width:300, height:300)
                                            .clipped()
                                    }
                                })
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
            }
            .background(LinearGradient(gradient:Gradient(colors:[Color.black, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
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
                Title(title:"Thanks to:")
                
                let links:[String]=["https://www.darrenrwong.com/toprocks/2step/", "https://www.pinterest.com/pin/51721095697254702/", "https://www.wikihow.com/Do-Some-Break-Dance-Moves", "https://home.gamer.com.tw/creationDetail.php?sn=1739953", "https://www.darrenrwong.com/toprocks/kick-and-skip/", "https://www.wikihow.com/Do-the-6-Step-(Breakdancing)", "https://www.youtube.com/watch?v=JBMg_yqWFPc", "https://en.wikipedia.org/wiki/Windmill_(b-boy_move)", "https://en.wikipedia.org/wiki/Flare_(acrobatic_move)", "http://fuske4bboyz.blogspot.com/2008/05/how-to-do-swipes.html", "https://en.wikipedia.org/wiki/Headspin", "https://bluesky-ky.com/breaking-style-introduce/", "https://www.wikihow.com/Do-a-Backflip", "https://www.wikihow.com/Do-a-Sideflip"]
                ScrollView{
                    ForEach(links, id:\.self){(message) in
                        HStack{
                            Link(message, destination:URL(string:message)!)
                                .padding(.bottom, 10)
                            Spacer()
                        }
                        .padding([.leading, .trailing], 10)
                        Divider()
                    }
                }
                ScrollView(.horizontal){
                    HStack{
                        Group{
                            ImageView(str:"bboy2")
                                .saturation(5)
                            ImageView(str:"bboy2")
                                .saturation(0.3)
                            ImageView(str:"bboy2")
                                .blur(radius: 10)
                            ImageView(str:"bboy2")
                                .brightness(0.5)
                            ImageView(str:"bboy2")
                                .colorInvert()
                            ImageView(str:"bboy2")
                                .colorMultiply(Color.green)
                            ImageView(str:"bboy2")
                                .colorMultiply(Color.red)
                            ImageView(str:"bboy2")
                                .contrast(3)
                            ImageView(str:"bboy2")
                                .grayscale(0.9)
                        }
                        ImageView(str:"bboy2")
                            .hueRotation(Angle(degrees: 90))
                        ImageView(str:"bboy2")
                            .hueRotation(Angle(degrees: 180))
                        ZStack{
                            ImageView(str:"bboy2")
                            ImageView(str:"fire")
                                .blendMode(.darken)
                        }
                        
                        ZStack{
                            ImageView(str:"bboy2")
                            ImageView(str:"fire")
                                .blendMode(.colorBurn)
                        }
                        ZStack{
                            ImageView(str:"bboy2")
                            ImageView(str:"fire")
                                .blendMode(.colorDodge)
                        }
                    }
                }
            }
            .background(RadialGradient(gradient:Gradient(colors:[Color.white, Color.black]), center:.center, startRadius: 100, endRadius: 400))
                .tabItem{
                    Image(systemName:"link")
                    Text(" Ref. Link")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 

struct Title: View {
    let title:String
    var body: some View {
        Text(title)
            .font(.system(.largeTitle, design: .rounded))
            .foregroundColor(Color("myFontColor"))
            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
            .padding(.bottom, 10)
    }
}

struct Context: View {
    let context:String
    var body: some View {
        TextEditor(text:.constant(context))
            .background(Color(red: 1, green: 1, blue: 1, opacity: 0.3))
            .foregroundColor(Color("myFontColor"))
            .frame(height:300)
            .accentColor(.clear)
    }
}

struct ImageView: View {
    let str:String
    var body: some View {
        Image(str)
            .resizable()
            .scaledToFill()
            .frame(width:50, height:50)
            .clipped()
    }
}
