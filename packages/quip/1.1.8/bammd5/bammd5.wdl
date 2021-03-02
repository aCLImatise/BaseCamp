version 1.0

task Bammd5 {
  input {
    Boolean? input_sam_default
    String cat
    String reads_dot_bam
  }
  command <<<
    bammd5 \
      ~{cat} \
      ~{reads_dot_bam} \
      ~{if (input_sam_default) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/quip:1.1.8--hed695b0_0"
  }
  parameter_meta {
    input_sam_default: "input is SAM (by default BAM is assumed)"
    cat: ""
    reads_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}