version 1.0

task Samplingutils {
  input {
    Boolean? cite
  }
  command <<<
    sampling_utils \
      ~{if (cite) then "--cite" else ""}
  >>>
  parameter_meta {
    cite: ""
  }
  output {
    File out_stdout = stdout()
  }
}