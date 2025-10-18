//class to hold all info about a song
class SongMeta {
  String id, title, artist, file, lyrics;
  
  SongMeta(String id, String title, String artist, String file, String lyrics){
    this.id = id;
    this.title = title;
    this.artist = artist;
    this.file = file;
    this.lyrics = lyrics;
  }
}

//loads songs from JSON file
class SongData {
  SongMeta getSongByTitle(JSONObject moodsData, String mood, String title){
    JSONArray songs = moodsData.getJSONArray(mood);
    
    for(int i = 0; i < songs.size(); i++){
      JSONObject song = songs.getJSONObject(i);
      
      if(song.getString("title").equals(title)){
        return new SongMeta(
        song.getString("id"),
        song.getString("title"),
        song.getString("artist"),
        song.getString("file"),
        song.getString("lyrics")
        );
      }
    }
    return null;
  }
}
