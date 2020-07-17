version 1.0

task FRCurve {
  input {
    String? params
  }
  command <<<
    FRCurve \
      ~{params}
  >>>
  parameter_meta {
    params: ""
  }
}