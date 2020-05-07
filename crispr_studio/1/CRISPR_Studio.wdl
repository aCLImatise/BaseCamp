version 1.0

task CRISPRStudio {
  input {
    File inInFile
    File listListOfIsolates
    Boolean grayGrayOutUnique
    Boolean grayGrayOutSimilar
    Boolean checkCheckFastA
    String sortSort
    Boolean rerunRerun
    String cutCutOff
    Boolean spacerSpacerSize
  }
  command <<<
    CRISPR_Studio \
      ~{if defined(inInFile) then ("--inFile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(listListOfIsolates) then ("--listOfIsolates " +  '"' + listListOfIsolates + '"') else ""} \
      ~{true="--grayOutUnique" false="" grayGrayOutUnique} \
      ~{true="--grayOutSimilar" false="" grayGrayOutSimilar} \
      ~{true="--checkFasta" false="" checkCheckFastA} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{true="--rerun" false="" rerunRerun} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{true="--spacerSize" false="" spacerSpacerSize}
  >>>
}