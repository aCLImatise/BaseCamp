version 1.0

task QuartetDist {
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
    quartet_dist \
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