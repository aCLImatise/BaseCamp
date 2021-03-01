version 1.0

task SamtoolsFlagstat {
  input {
    String in_dot_bam
  }
  command <<<
    samtools flagstat \
      ~{in_dot_bam}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}