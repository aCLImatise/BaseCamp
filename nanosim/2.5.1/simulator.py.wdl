version 1.0

task Simulatorpy {
  input {
    Boolean? v
  }
  command <<<
    simulator_py \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}