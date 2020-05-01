version 1.0

task BigWigInfo {
  input {
    Boolean udcUdcDir
    String chromChromS
    String zoomsZooms
    String minmaxMinmax
    File? fileFileBw
  }
  command <<<
    bigWigInfo \
      ~{fileFileBw} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{if defined(chromChromS) then ("-chroms " +  '"' + chromChromS + '"') else ""} \
      ~{if defined(zoomsZooms) then ("-zooms " +  '"' + zoomsZooms + '"') else ""} \
      ~{if defined(minmaxMinmax) then ("-minMax " +  '"' + minmaxMinmax + '"') else ""}
  >>>
}