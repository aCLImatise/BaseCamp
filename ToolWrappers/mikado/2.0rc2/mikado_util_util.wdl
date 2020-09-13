version 1.0

task MikadoUtilUtil {
  input {
    String mikado
    String util
  }
  command <<<
    mikado util util \
      ~{mikado} \
      ~{util}
  >>>
  parameter_meta {
    mikado: ""
    util: ""
  }
  output {
    File out_stdout = stdout()
  }
}