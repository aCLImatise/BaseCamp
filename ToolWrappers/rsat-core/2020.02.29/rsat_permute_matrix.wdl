version 1.0

task RsatPermutematrix {
  input {
    String permute_matrix
    String jacques_do_tv_and_otheldenatulbdotacdotbe
    String util
    String convert_matrix
  }
  command <<<
    rsat permute_matrix \
      ~{permute_matrix} \
      ~{jacques_do_tv_and_otheldenatulbdotacdotbe} \
      ~{util} \
      ~{convert_matrix}
  >>>
  parameter_meta {
    permute_matrix: "[1mVERSION[0m"
    jacques_do_tv_and_otheldenatulbdotacdotbe: "[1mCATEGORY[0m"
    util: "matrix"
    convert_matrix: "[1mOPTIONS[0m"
  }
  output {
    File out_stdout = stdout()
  }
}