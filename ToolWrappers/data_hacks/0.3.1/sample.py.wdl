version 1.0

task Samplepy {
  input {
    String cat
    String data
  }
  command <<<
    sample_py \
      ~{cat} \
      ~{data}
  >>>
  parameter_meta {
    cat: ""
    data: ""
  }
  output {
    File out_stdout = stdout()
  }
}