version 1.0

task SeqkitReplace {
  input {
    Boolean byBySeq
    Boolean ignoreIgnoreCase
    Boolean keepKeepKey
    Int keyKeyCaptIdx
    String keyKeyMissRepl
    String kvKvFile
    Int nrNrWidth
    String patternPattern
    String replacementReplacement
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
    seqkit replace \
      ~{flagsFlags} \
      ~{true="--by-seq" false="" byBySeq} \
      ~{true="--ignore-case" false="" ignoreIgnoreCase} \
      ~{true="--keep-key" false="" keepKeepKey} \
      ~{if defined(keyKeyCaptIdx) then ("--key-capt-idx " +  '"' + keyKeyCaptIdx + '"') else ""} \
      ~{if defined(keyKeyMissRepl) then ("--key-miss-repl " +  '"' + keyKeyMissRepl + '"') else ""} \
      ~{if defined(kvKvFile) then ("--kv-file " +  '"' + kvKvFile + '"') else ""} \
      ~{if defined(nrNrWidth) then ("--nr-width " +  '"' + nrNrWidth + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(replacementReplacement) then ("--replacement " +  '"' + replacementReplacement + '"') else ""} \
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