version 1.0

task UmisDemultiplexSamples {
  input {
    String sample_dot
  }
  command <<<
    umis demultiplex_samples \
      ~{sample_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sample_dot: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}