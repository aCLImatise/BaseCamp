version 1.0

task FastqToFasta.py {
  input {
    Boolean? info
    File? name_output_fasta
    Boolean? n_keep
    Boolean? gzip
    Boolean? bzip
    String input_sequence
  }
  command <<<
    fastq-to-fasta.py \
      ~{input_sequence} \
      ~{true="--info" false="" info} \
      ~{if defined(name_output_fasta) then ("--output " +  '"' + name_output_fasta + '"') else ""} \
      ~{true="--n_keep" false="" n_keep} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip" false="" bzip}
  >>>
  parameter_meta {
    info: "print citation information"
    name_output_fasta: "The name of the output FASTA sequence file. (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
    n_keep: "Option to keep reads containing 'N's in input_sequence file. Default is to drop reads (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    input_sequence: "The name of the input FASTQ sequence file."
  }
}