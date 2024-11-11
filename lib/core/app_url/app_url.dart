class AppUrls{
  //https://www.figma.com/design/N3w1qmQTvACxJ5E1GCGg5n/%D8%AC%D9%85%D8%A7%D8%AA?node-id=0-1&t=lD7dpRM8Hipd5uiN-0
  static const String baseUrl = 'https://gymatapp.com/';
  static const String socketUrl = 'https://node.gymatapp.com/';

  ///////////////////////socketUrls/////////////////////////////
  static const String socketJoinRooms = 'gimat_join_rooms';
  static const String socketJoinUser = 'gimat_user_join';
  static const String socketSendFirstMessage = 'gimat_one_market_send_data';
  static const String socketSendMessage = 'gimat_one_room_send_data';
  static const String socketReceiveFirstMessage = 'gimat_one_user_receive_data';
  static const String socketReceiveMessage = 'gimat_one_room_receive_data';
  static const String socketLeaveRooms = 'gimat_leaves_rooms';


  ///////////////////////socketUrls/////////////////////////////


  //endPoints
  static const String login = "api/user/auth/login";
  static const String signUp = "api/user/auth/register";
  static const String editProfile = "api/user/profile/updateProfile";
  static const String followUnFollow = "api/user/profile/follow";
  static const String followers = 'api/user/profile/following';
  static const String favourites = 'api/user/profile/favorites';
  static const String storeFavourites = 'api/user/profile/favorite';
  static const String search = 'api/user/markets';
  static const String searchByProductImage = 'api/shop/searchByImage';



  static const String updateToken = 'api/user/profile/storeToken';
  static const String logout = 'api/user/profile/logout';
  static const String deleteAccount = 'api/user/profile/deleteAccount';
  static const String addRemoveGymService = 'api/gym/favorite';
  static const String addRemoveSpaService = 'api/spa/favorite';
  static const String addRemoveFoodService = 'api/food/favorite';
  static const String addRemoveCoachService = 'api/coach/favorite';
  static const String addRemoveSoprtsFieldService = 'api/sport/favorite';
  static const String addRemoveShopService = 'api/shop/favorite';

  static const String chatConversationCreate = 'api/user/profile/chat/create';
  static const String chatConversation = 'api/user/profile/chat';
  static const String chatMessagesPagination = 'api/user/profile/paginateMessages';

  static const String socialLogin = "api/user/auth/checkUserSocial";
  static const String home = "api/user/home";
  static const String address = "api/user/address";


  static const String gymAll = "api/gym/all";
  static const String gymOne = "api/gym/one";
  static const String gymServiceOne = "api/gym/services";

  static const String spaAll = "api/spa/all";
  static const String spaOne = "api/spa/one";
  static const String spaServiceOne = "api/spa/services";

  static const String sportsFieldAll = "api/sport/all";
  static const String sportsFieldOne = "api/sport/one";
  static const String sportsFieldServiceOne = "api/sport/services";
  static const String sportsFieldTimes = "api/sport/getDateAvailableTime";
  static const String sportsFieldOrder = "api/sport/orders";


  static const String foodAll = "api/food/all";
  static const String foodOne = "api/food/one";
  static const String foodServiceOne = "api/food/services";
  static const String foodOrder = "api/food/orders";

  static const String mainShopCategories = 'api/shopCategories';
  static const String allShops = 'api/shop/all';
  static const String shopOne = 'api/shop/one';
  static const String shopProduct = 'api/shop/products';
  static const String shopOrder = "api/shop/orders";

  static const String gymOrder = 'api/gym/orders';
  static const String orders = 'api/user/orders';
  static const String spaOrder = 'api/spa/orders';

  static const String coachSliders = 'api/coach/slider';
  static const String coches = 'api/coach/coaches';
  static const String oneCoach = 'api/coach/one';
  static const String coachServiceOne = "api/coach/services";
  static const String coachOrder = "api/coach/orders";
  static const String coachLiveSessionOrder = "api/coach/subscribeInLiveSession";
  static const String coachEndedLiveSession = "api/coach/getEndedLiveSession";
  static const String coachLiveSessionVideoDetails = "api/coach/getLiveSessionVideo";



  static const String workouts = "api/coach/workouts";
  static const String workoutVideos = "api/coach/loadVideos";
  static const String liveSessions = "api/coach/liveSessions";
  static const String liveSessionDetails = "api/coach/liveSession";
  static const String subscribeToLiveSession = "api/coach/subscribeInLiveSession";

  static const String allRoomsIds = "api/user/profile/getRoomsIds";

  static const String fitnessData = 'api/user/getWatchDataGoals';
  static const String saveFitnessData = 'api/user/updateGoals';
  static const String addMeal = 'api/user/nutrition';
  static const String addActivity = 'api/user/activity';
  static const String addUpdateNutritionActivityCaloriesGoal = 'api/user/updateDailyGoals';
  static const String notification = 'api/user/profile/notifications';
  static const String notificationStatusSetting = 'api/user/profile/getNotificationStatus';
  static const String updateNotificationStatusSetting = 'api/user/profile/updateNotificationStatus';

  static const String paymentCards = 'api/user/profile/paymentCards';
  static const String wallet = 'api/user/profile/wallet';
  static const String payOrder = 'api/user/payOrder';
  static const String cancelOrder = 'api/user/cancelOrder';


}
