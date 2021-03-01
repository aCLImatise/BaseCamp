version 1.0

task Gwh {
  input {
    String unit
  }
  command <<<
    gwh \
      ~{unit}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    unit: "1 Error on OPEN: prmtop"
  }
  output {
    File out_stdout = stdout()
  }
}