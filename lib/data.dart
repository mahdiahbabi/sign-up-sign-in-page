 class onboard_list{
   int? id;
   String? title;
   String? caption;
  
  onboard_list({required this.caption,required this.id,required this.title});
 }


 class AppDataBase {
   static List<onboard_list>  get onboarditem {
    return [
      onboard_list(caption: ' In publishing and graphic design, Lorem is a placeholder text commonly ', id: 0, title: ' Explore Upcoming and Nearby Events '),
      onboard_list(caption: ' In publishing and graphic design, Lorem is a placeholder text commonly ', id: 1, title: ' Explore dwcoming and Nearby Events '),
      onboard_list(caption: ' In publishing and graphic design, Lorem is a placeholder text commonly ', id: 2, title: ' Explore tocoming and Nearby Events '),
    ];
   }


   

 }