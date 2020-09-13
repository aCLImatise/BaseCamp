version 1.0

task Pydoc3 {
  input {
    String package_dot
    Directory directory_dot
  }
  command <<<
    pydoc3 \
      ~{package_dot} \
      ~{directory_dot}
  >>>
  parameter_meta {
    package_dot: "If <name> contains a '/', it is used as the path to a"
    directory_dot: "If <name> contains a '/', it is treated as a filename; if"
  }
  output {
    File out_stdout = stdout()
  }
}