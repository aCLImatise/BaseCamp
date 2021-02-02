version 1.0

task SimkaMinCoreInfo {
  input {
    Boolean? in
  }
  command <<<
    simkaMinCore info \
      ~{if (in) then "-in" else ""}
  >>>
  parameter_meta {
    in: "(1 arg) :    filename to a sketch file"
  }
  output {
    File out_stdout = stdout()
  }
}