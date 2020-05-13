version 1.0

task FastqToCA {
  input {
    String insertInsertSize
    String libraryLibraryName
    String technologyTechnology
    String typeType
    Boolean inInNie
    Boolean outOutTie
    String readsReads
    String matesMates
    String matesMates
    Boolean nonrandomNonrandom
    String featureFeature
  }
  command <<<
    fastqToCA \
      ~{if defined(insertInsertSize) then ("-insertsize " +  '"' + insertInsertSize + '"') else ""} \
      ~{if defined(libraryLibraryName) then ("-libraryname " +  '"' + libraryLibraryName + '"') else ""} \
      ~{if defined(technologyTechnology) then ("-technology " +  '"' + technologyTechnology + '"') else ""} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{true="-innie" false="" inInNie} \
      ~{true="-outtie" false="" outOutTie} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(matesMates) then ("-mates " +  '"' + matesMates + '"') else ""} \
      ~{if defined(matesMates) then ("-mates " +  '"' + matesMates + '"') else ""} \
      ~{true="-nonrandom" false="" nonrandomNonrandom} \
      ~{if defined(featureFeature) then ("-feature " +  '"' + featureFeature + '"') else ""}
  >>>
}