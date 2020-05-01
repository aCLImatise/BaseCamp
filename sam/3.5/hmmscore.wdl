version 1.0

task Hmmscore {
  input {
    String iI
    String modelModelFile
    File trackTrackMod
    File modelModelLibrary
    String queryQuery
  }
  command <<<
    hmmscore \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(modelModelFile) then ("-modelfile " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(trackTrackMod) then ("-trackmod " +  '"' + trackTrackMod + '"') else ""} \
      ~{if defined(modelModelLibrary) then ("-modellibrary " +  '"' + modelModelLibrary + '"') else ""} \
      ~{if defined(queryQuery) then ("-query " +  '"' + queryQuery + '"') else ""}
  >>>
}