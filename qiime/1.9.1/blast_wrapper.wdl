version 1.0

task BlastWrapper.py {
  input {
    String inputInputFastAFp
    String refseqRefseqSFp
  }
  command <<<
    blast_wrapper.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(refseqRefseqSFp) then ("--refseqs_fp " +  '"' + refseqRefseqSFp + '"') else ""}
  >>>
}