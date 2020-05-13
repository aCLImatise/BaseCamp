version 1.0

task SeqkitMutate {
  input {
    Boolean byByName
    String deletionDeletion
    Boolean ignoreIgnoreCase
    String insertionInsertion
    Boolean invertInvertMatch
    String patternPattern
    String patternPatternFile
    String pointPoint
    Boolean useUseRegexp
    Int alphabetAlphabetGuessSeqLength
    Boolean idIdNcbi
    String idIdRegexp
    String inInFileList
    Int lineLineWidth
    String outOutFile
    Boolean quietQuiet
    String seqSeqType
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    seqkit mutate \
      ~{flagsFlags} \
      ~{true="--by-name" false="" byByName} \
      ~{if defined(deletionDeletion) then ("--deletion " +  '"' + deletionDeletion + '"') else ""} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{if defined(insertionInsertion) then ("--insertion " +  '"' + insertionInsertion + '"') else ""} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(patternPatternFile) then ("--pattern-file " +  '"' + patternPatternFile + '"') else ""} \
      ~{if defined(pointPoint) then ("--point " +  '"' + pointPoint + '"') else ""} \
      ~{true="--use-regexp" false="" useUseRegexp} \
      ~{if defined(alphabetAlphabetGuessSeqLength) then ("--alphabet-guess-seq-length " +  '"' + alphabetAlphabetGuessSeqLength + '"') else ""} \
      ~{true="--id-ncbi" false="" idIdNcbi} \
      ~{if defined(idIdRegexp) then ("--id-regexp " +  '"' + idIdRegexp + '"') else ""} \
      ~{if defined(inInFileList) then ("--infile-list " +  '"' + inInFileList + '"') else ""} \
      ~{if defined(lineLineWidth) then ("--line-width " +  '"' + lineLineWidth + '"') else ""} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(seqSeqType) then ("--seq-type " +  '"' + seqSeqType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}