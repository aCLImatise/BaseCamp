version 1.0

task HalLodExtract {
  input {
    String in_hal_path
    String out_hal_path
    String scale
  }
  command <<<
    halLodExtract \
      ~{in_hal_path} \
      ~{out_hal_path} \
      ~{scale}
  >>>
  parameter_meta {
    in_hal_path: ""
    out_hal_path: ""
    scale: ""
  }
}