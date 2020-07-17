version 1.0

task HalExtract {
  input {
    String in_hal_path
    String out_hal_path
  }
  command <<<
    halExtract \
      ~{in_hal_path} \
      ~{out_hal_path}
  >>>
  parameter_meta {
    in_hal_path: ""
    out_hal_path: ""
  }
}