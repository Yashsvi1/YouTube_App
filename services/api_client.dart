import 'package:dio/dio.dart';

class ApiClient{
  Dio _dio = new Dio();
  Future<dynamic> getVideos() async {
    const URL = 'https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics%2Cplayer&chart=mostPopular&maxResults=100&regionCode=IN&key=AIzaSyAz-BMw5bM_WnW_EbS8QFeCMA6yzxG5_ZA';
  final Response response = await _dio.get(URL);
  //print(response.data);
  //print(response.data.runtimeType);
  return response.data['items'];
  }
}