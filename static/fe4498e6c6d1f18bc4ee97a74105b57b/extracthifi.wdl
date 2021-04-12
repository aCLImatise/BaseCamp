version 1.0

task Extracthifi {
  input {
    String input_dot_bam
    String output_dot_bam
  }
  command <<<
    extracthifi \
      ~{input_dot_bam} \
      ~{output_dot_bam}
  >>>
  runtime {
    docker: "quay.io/biocontainers/extracthifi:1.0.0--0"
  }
  parameter_meta {
    input_dot_bam: "STR  Input CCS BAM."
    output_dot_bam: "STR  Ouput HiFi BAM."
  }
  output {
    File out_stdout = stdout()
  }
}