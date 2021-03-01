version 1.0

task StarfishUtil {
  input {
    String install_strict_dependencies
  }
  command <<<
    starfish util \
      ~{install_strict_dependencies}
  >>>
  runtime {
    docker: "quay.io/biocontainers/starfish:0.2.1--py_0"
  }
  parameter_meta {
    install_strict_dependencies: "warning! updates different packages in your..."
  }
  output {
    File out_stdout = stdout()
  }
}