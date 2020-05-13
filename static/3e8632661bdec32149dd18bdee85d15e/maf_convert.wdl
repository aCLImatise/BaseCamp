version 1.0

task MafConvert {
  input {
    Boolean proteinProtein
    String joinJoin
    Boolean noheaderNoheader
    Boolean dictionaryDictionary
    String dictDictFile
    String readReadGroup
    String lineLineSize
  }
  command <<<
    maf-convert \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(joinJoin) then ("--join " +  '"' + joinJoin + '"') else ""} \
      ~{true="--noheader" false="" noheaderNoheader} \
      ~{true="--dictionary" false="" dictionaryDictionary} \
      ~{if defined(dictDictFile) then ("--dictfile " +  '"' + dictDictFile + '"') else ""} \
      ~{if defined(readReadGroup) then ("--readgroup " +  '"' + readReadGroup + '"') else ""} \
      ~{if defined(lineLineSize) then ("--linesize " +  '"' + lineLineSize + '"') else ""}
  >>>
}