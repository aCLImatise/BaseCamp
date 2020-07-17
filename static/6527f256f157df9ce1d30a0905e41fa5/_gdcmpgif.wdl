version 1.0

task _gdcmpgif {
  input {
    String gdc_mpg_if
    File var_1
    File var_2
  }
  command <<<
    _gdcmpgif \
      ~{gdc_mpg_if} \
      ~{var_1} \
      ~{var_2}
  >>>
  parameter_meta {
    gdc_mpg_if: ""
    var_1: ""
    var_2: ""
  }
}