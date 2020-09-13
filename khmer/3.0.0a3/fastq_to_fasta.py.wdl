version 1.0

task Fastqtofastapy {
  input {
    Boolean? info
    File? name_output_fasta
    Boolean? n_keep
    Boolean? gzip
    Boolean? bzip
  }
  command <<<
    fastq_to_fasta_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(name_output_fasta) then ("--output " +  '"' + name_output_fasta + '"') else ""} \
      ~{if (n_keep) then "--n_keep" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    name_output_fasta: "The name of the output FASTA sequence file. (default:\\n<_io.TextIOWrapper name='<stdout>' mode='w'\\nencoding='utf-8'>)"
    n_keep: "Option to keep reads containing 'N's in input_sequence\\nfile. Default is to drop reads (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_fasta = "${in_name_output_fasta}"
  }
}