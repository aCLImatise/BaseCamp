version 1.0

task Grabix {
  input {
    String index
    String bg_zf_file
  }
  command <<<
    grabix \
      ~{index} \
      ~{bg_zf_file}
  >>>
  parameter_meta {
    index: ""
    bg_zf_file: ""
  }
}