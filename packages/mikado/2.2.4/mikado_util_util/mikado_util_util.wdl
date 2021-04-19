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
    docker: "quay.io/biocontainers/mikado:2.2.4--py38h803c66d_0"
  }
  parameter_meta {
    mikado: ""
    util: ""
  }
  output {
    File out_stdout = stdout()
  }
}