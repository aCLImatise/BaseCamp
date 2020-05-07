version 1.0

task ReadSeqRmDupseq {
  input {
    Boolean duplicatesDuplicates
    Boolean debugDebug
    String inInFile
    String minMinSeqLength
    String outfileOutfile
  }
  command <<<
    ReadSeq rm-dupseq \
      ~{true="--duplicates" false="" duplicatesDuplicates} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(minMinSeqLength) then ("--min_seq_length " +  '"' + minMinSeqLength + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""}
  >>>
}