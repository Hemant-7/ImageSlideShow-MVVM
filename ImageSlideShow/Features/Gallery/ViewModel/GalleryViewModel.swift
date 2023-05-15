//
//  GalleryViewModel.swift
//  ImageSlideShow
//
//  Created by Hemant kumar on 15/05/23.
//

import Foundation

class GalleryViewModel: ObservableObject {
    
    var arrayOfImages = [GalleryModel]()
    
    func configureImageData() {
        let image1 = GalleryModel(image: "https://w0.peakpx.com/wallpaper/218/1001/HD-wallpaper-hulk-marvel-superhero-hulk-superheroes-marvel-artstation.jpg", title: "")
        let image2 = GalleryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREpsM66ZfYfLEIsVswvbNgBrLNFRsR0mVcwKErgatIFEQHcq9uJY8Cx0vsWbpEi4b2tW0&usqp=CAU", title: "")
        let image3 = GalleryModel(image: "https://i.pinimg.com/564x/a1/6a/4b/a16a4ba301f12f969529559af9a3ce79.jpg", title: "")
        let image4 = GalleryModel(image: "https://i.pinimg.com/474x/86/6a/75/866a75fac7225f5c20f8d5162df4a6f3.jpg", title: "")
        let image5 = GalleryModel(image: "https://i.pinimg.com/474x/83/6e/b5/836eb5af8ea7fc452b0b7301dea9e254.jpg", title: "")
        let image6 = GalleryModel(image: "https://i.pinimg.com/474x/4c/4b/7b/4c4b7bf2313e4eefc14bce27c7064810.jpg", title: "")
        let image7 = GalleryModel(image: "https://i.pinimg.com/474x/6a/20/1b/6a201b51b9ac934f538aec9c615456db.jpg", title: "")
        let image8 = GalleryModel(image: "https://i.pinimg.com/474x/dc/1b/ad/dc1bade8ed688b615b2f67ec64cde83e.jpg", title: "")
        let image9 = GalleryModel(image: "https://i.pinimg.com/474x/25/53/89/255389160f9de8c55ad79ba525f5211a.jpg", title: "")
        let image10 = GalleryModel(image: "https://i.pinimg.com/736x/03/dc/5d/03dc5d720746a1a9d871545b9253e9c2.jpg", title: "")
        let image11 = GalleryModel(image: "https://i.pinimg.com/474x/26/2d/41/262d415499c327ac8dade2f6d1c9de94.jpg", title: "")
        let image12 = GalleryModel(image: "https://i.pinimg.com/474x/58/0f/ee/580feedb100b66e8ade1d1d0a5d4c55a.jpg", title: "")
        let image13 = GalleryModel(image: "https://i.pinimg.com/474x/38/10/c8/3810c8cf4ddd5cb5d23f8d93e9a413bc.jpg", title: "")
        let image14 = GalleryModel(image: "https://i.pinimg.com/474x/60/2d/9b/602d9bd2ae0007d7d61a684dd766ec72.jpg", title: "")
        let image15 = GalleryModel(image: "https://i.pinimg.com/474x/fb/a6/2a/fba62a137808ee0b3f0f78f87d68a290.jpg", title: "")
        let image16 = GalleryModel(image: "https://i.pinimg.com/474x/20/14/91/201491ef86bd32382e94512c0703e12a.jpg", title: "")
        let image17 = GalleryModel(image: "https://i.pinimg.com/474x/02/09/d5/0209d53a91c8e82aeb13685a7a5413a7.jpg", title: "")
        let image18 = GalleryModel(image: "https://i.pinimg.com/474x/8a/96/2a/8a962aec4e9db8d4423364bd44da4175.jpg", title: "")
        arrayOfImages = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18]
    }
}
