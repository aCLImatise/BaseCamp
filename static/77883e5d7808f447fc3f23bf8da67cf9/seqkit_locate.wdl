version 1.0

task SeqkitLocate {
  input {
    Boolean bedBed
    Boolean degenerateDegenerate
    Boolean gtfGtf
    Boolean hideHideMatched
    Boolean ignoreIgnoreCase
    Int maxMaxMismatch
    Boolean nonNonGreedy
    Boolean onlyOnlyPositiveStrand
    String patternPattern
    String patternPatternFile
    Boolean useUseFmi
    Boolean useUseRegexp
    Int validateValidateSeqLength
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
    seqkit locate \
      ~{flagsFlags} \
      ~{true="--bed" false="" bedBed} \
      ~{true="--degenerate" false="" degenerateDegenerate} \
      ~{true="--gtf" false="" gtfGtf} \
      ~{true="--hide-matched" false="" hideHideMatched} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{if defined(maxMaxMismatch) then ("--max-mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{true="--non-greedy" false="" nonNonGreedy} \
      ~{true="--only-positive-strand" false="" onlyOnlyPositiveStrand} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(patternPatternFile) then ("--pattern-file " +  '"' + patternPatternFile + '"') else ""} \
      ~{true="--use-fmi" false="" useUseFmi} \
      ~{true="--use-regexp" false="" useUseRegexp} \
      ~{if defined(validateValidateSeqLength) then ("--validate-seq-length " +  '"' + validateValidateSeqLength + '"') else ""} \
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