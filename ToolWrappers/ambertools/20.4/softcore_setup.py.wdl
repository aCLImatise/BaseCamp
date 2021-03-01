version 1.0

task SoftcoreSetuppy {
  input {
    String to
    String prepare
    String a
  }
  command <<<
    softcore_setup_py \
      ~{to} \
      ~{prepare} \
      ~{a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to: ""
    prepare: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}