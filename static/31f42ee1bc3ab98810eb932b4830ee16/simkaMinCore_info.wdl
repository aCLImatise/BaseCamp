version 1.0

task SimkaMinCoreInfo {
  input {
    Boolean? in
  }
  command <<<
    simkaMinCore info \
      ~{true="-in" false="" in}
  >>>
  parameter_meta {
    in: "(1 arg) :    filename to a sketch file"
  }
}