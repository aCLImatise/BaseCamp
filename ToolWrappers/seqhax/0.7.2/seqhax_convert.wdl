version 1.0

task SeqhaxConvert {
  input {
    Boolean? output_fasta
    Boolean? output_fastq_adding
  }
  command <<<
    seqhax convert \
      ~{if (output_fasta) then "-a" else ""} \
      ~{if (output_fastq_adding) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_fasta: "Output FASTA."
    output_fastq_adding: "Output FASTQ (adding qualities)."
  }
  output {
    File out_stdout = stdout()
  }
}