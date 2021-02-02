version 1.0

task StarfishUtil {
  input {
    String install_strict_dependencies
  }
  command <<<
    starfish util \
      ~{install_strict_dependencies}
  >>>
  parameter_meta {
    install_strict_dependencies: "warning! updates different packages in your..."
  }
  output {
    File out_stdout = stdout()
  }
}