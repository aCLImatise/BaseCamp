version 1.0

task Fragfinder {
  input {
    String iI
    String modelModelFile
    File trackTrackMod
    File modelModelLibrary
    String dbDb
    String firstFirstSequence
    Int fraFraGlen
    Boolean numNumPerMatch
  }
  command <<<
    fragfinder \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(modelModelFile) then ("-modelfile " +  '"' + modelModelFile + '"') else ""} \
      ~{if defined(trackTrackMod) then ("-trackmod " +  '"' + trackTrackMod + '"') else ""} \
      ~{if defined(modelModelLibrary) then ("-modellibrary " +  '"' + modelModelLibrary + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(firstFirstSequence) then ("-firstsequence " +  '"' + firstFirstSequence + '"') else ""} \
      ~{if defined(fraFraGlen) then ("-fraglen " +  '"' + fraFraGlen + '"') else ""} \
      ~{true="-numpermatch" false="" numNumPerMatch}
  >>>
}