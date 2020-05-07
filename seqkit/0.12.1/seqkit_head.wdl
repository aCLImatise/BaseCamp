version 1.0

task SeqkitHead {
  input {
    Int numberNumber
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
    seqkit head \
      ~{flagsFlags} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
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