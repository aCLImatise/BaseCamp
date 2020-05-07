version 1.0

task SeqkitGrep {
  input {
    Boolean byByName
    Boolean byBySeq
    Boolean degenerateDegenerate
    Boolean deleteDeleteMatched
    Boolean ignoreIgnoreCase
    Boolean invertInvertMatch
    Int maxMaxMismatch
    String patternPattern
    String patternPatternFile
    String regionRegion
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
    seqkit grep \
      ~{flagsFlags} \
      ~{true="--by-name" false="" byByName} \
      ~{true="--by-seq" false="" byBySeq} \
      ~{true="--degenerate" false="" degenerateDegenerate} \
      ~{true="--delete-matched" false="" deleteDeleteMatched} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--invert-match" false="" invertInvertMatch} \
      ~{if defined(maxMaxMismatch) then ("--max-mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(patternPatternFile) then ("--pattern-file " +  '"' + patternPatternFile + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
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