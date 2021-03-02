version 1.0

task Pydoc37 {
  input {
    String package_dot
    Directory directory_dot
  }
  command <<<
    pydoc3_7 \
      ~{package_dot} \
      ~{directory_dot}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    package_dot: "If <name> contains a '/', it is used as the path to a"
    directory_dot: "If <name> contains a '/', it is treated as a filename; if"
  }
  output {
    File out_stdout = stdout()
  }
}