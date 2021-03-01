version 1.0

task SambambaValidate {
  input {
    String input_dot_bam
  }
  command <<<
    sambamba validate \
      ~{input_dot_bam}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}