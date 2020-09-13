version 1.0

task Fastqutils {
  input {
    Boolean? cite
  }
  command <<<
    fastq_utils \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}