version 1.0

task BamFillUnalignedpy {
  input {
    String? inputoutput_format_sam
    String? input_fastq
  }
  command <<<
    bam_fill_unaligned_py \
      ~{if defined(inputoutput_format_sam) then ("-f " +  '"' + inputoutput_format_sam + '"') else ""} \
      ~{if defined(input_fastq) then ("-q " +  '"' + input_fastq + '"') else ""}
  >>>
  parameter_meta {
    inputoutput_format_sam: "Input/output format (SAM)."
    input_fastq: "Input fastq."
  }
  output {
    File out_stdout = stdout()
  }
}