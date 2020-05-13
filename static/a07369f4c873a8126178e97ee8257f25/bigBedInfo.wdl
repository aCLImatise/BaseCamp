version 1.0

task BigBedInfo {
  input {
    Boolean udcUdcDir
    String chromChromS
    String zoomsZooms
    String getGet
    String extraExtraIndex
    File? fileFileBb
  }
  command <<<
    bigBedInfo \
      ~{fileFileBb} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{if defined(chromChromS) then ("-chroms " +  '"' + chromChromS + '"') else ""} \
      ~{if defined(zoomsZooms) then ("-zooms " +  '"' + zoomsZooms + '"') else ""} \
      ~{if defined(getGet) then ("- get " +  '"' + getGet + '"') else ""} \
      ~{if defined(extraExtraIndex) then ("-extraIndex " +  '"' + extraExtraIndex + '"') else ""}
  >>>
}