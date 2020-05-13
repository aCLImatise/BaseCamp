version 1.0

task Enotify {
  input {
    Boolean emailEmail
    Boolean toolTool
  }
  command <<<
    enotify \
      ~{true="-email" false="" emailEmail} \
      ~{true="-tool" false="" toolTool}
  >>>
}