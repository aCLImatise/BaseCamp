version 1.0

task Epydocgui {
  input {
    Boolean? debug
    File file_dot_prj
    String modules_dot_dot_dot
  }
  command <<<
    epydocgui \
      ~{file_dot_prj} \
      ~{modules_dot_dot_dot} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "Do not suppress error messages"
    file_dot_prj: "An epydoc GUI project file."
    modules_dot_dot_dot: "A list of Python modules to document."
  }
}