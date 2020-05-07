version 1.0

task MakeFastq.py {
  input {
    String inputInputFastAFp
    String qualQual
  }
  command <<<
    make_fastq.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(qualQual) then ("--qual " +  '"' + qualQual + '"') else ""}
  >>>
}