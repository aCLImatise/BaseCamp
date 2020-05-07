version 1.0

task SeqkitStats {
  input {
    Boolean allAll
    Boolean basenameBasename
    String fqFqEncoding
    String gapGapLetters
    Boolean skipSkipErr
    Boolean tabularTabular
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
    seqkit stats \
      ~{flagsFlags} \
      ~{true="--all" false="" allAll} \
      ~{true="--basename" false="" basenameBasename} \
      ~{if defined(fqFqEncoding) then ("--fq-encoding " +  '"' + fqFqEncoding + '"') else ""} \
      ~{if defined(gapGapLetters) then ("--gap-letters " +  '"' + gapGapLetters + '"') else ""} \
      ~{true="--skip-err" false="" skipSkipErr} \
      ~{true="--tabular" false="" tabularTabular} \
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