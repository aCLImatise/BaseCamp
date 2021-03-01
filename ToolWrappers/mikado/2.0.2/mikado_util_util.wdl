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
  runtime {
    docker: "quay.io/biocontainers/mikado:2.0.2--py37hfa133b6_0"
  }
  parameter_meta {
    mikado: ""
    util: ""
  }
  output {
    File out_stdout = stdout()
  }
}