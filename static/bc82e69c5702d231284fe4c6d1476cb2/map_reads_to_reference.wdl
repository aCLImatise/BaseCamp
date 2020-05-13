version 1.0

task MapReadsToReference.py {
  input {
    String inputInputSeqsFilePath
    String refseqRefseqSFp
  }
  command <<<
    map_reads_to_reference.py \
      ~{if defined(inputInputSeqsFilePath) then ("--input_seqs_filepath " +  '"' + inputInputSeqsFilePath + '"') else ""} \
      ~{if defined(refseqRefseqSFp) then ("--refseqs_fp " +  '"' + refseqRefseqSFp + '"') else ""}
  >>>
}