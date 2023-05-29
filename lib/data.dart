 class OnboardItem{
   int? id;
   String? title;
   String? caption;
   String? ImageName;
  
  OnboardItem({required this.caption,required this.id,required this.title,this.ImageName});
 }


 class AppDataBase {
   static List<OnboardItem>  get onboarditem {
    return [
      OnboardItem(caption: 'In publishing and graphic design, Lorem is a placeholder text commonly', id: 0, title: 'Explore Upcoming and Nearby Events',ImageName: 'onboard1' ),
      OnboardItem(caption: 'In publishing and graphic design, Lorem is a placeholder text commonly', id: 1, title: 'Explore dwcoming and Nearby Events',ImageName: 'onboard2'),
      OnboardItem(caption: 'In publishing and graphic design, Lorem is a placeholder text commonly', id: 2, title: 'Explore tocoming and Nearby Events',ImageName: 'onboard3' ),
    ];
   }


   

 }