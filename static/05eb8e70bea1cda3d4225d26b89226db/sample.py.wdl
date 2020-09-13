version 1.0

task Samplepy {
  input {
    Boolean? verbose
    String cat
    String data
  }
  command <<<
    sample_py \
      ~{cat} \
      ~{data} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: ""
    cat: ""
    data: ""
  }
  output {
    File out_stdout = stdout()
  }
}