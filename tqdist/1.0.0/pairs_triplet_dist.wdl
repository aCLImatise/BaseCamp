version 1.0

task PairsTripletDist {
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
    String? outputOutputFileName
  }
  command <<<
    pairs_triplet_dist \
      ~{filenameFilename1} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{filenameFilename2} \
      ~{outputOutputFileName}
  >>>
}