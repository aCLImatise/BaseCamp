version 1.0

task TripletDist {
  input {
    String theThe
    String theThe
    String theThe
    String theThe
    String theThe
    String theThe
    String theThe
    String theThe
    File? filenameFilename1
    File? filenameFilename2
  }
  command <<<
    triplet_dist \
      ~{filenameFilename1} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{filenameFilename2}
  >>>
}