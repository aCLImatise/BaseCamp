version 1.0

task Evolver {
  input {
    String evolver
  }
  command <<<
    evolver \
      ~{evolver}
  >>>
  parameter_meta {
    evolver: "evolver option# MyDataFile"
  }
  output {
    File out_stdout = stdout()
  }
}