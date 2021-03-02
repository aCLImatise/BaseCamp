version 1.0

task GsutilLabel {
  input {
    Boolean? remove_label_specified
    String command_dot
  }
  command <<<
    gsutil label \
      ~{command_dot} \
      ~{if (remove_label_specified) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_label_specified: "Remove the label with the specified key."
    command_dot: "SET"
  }
  output {
    File out_stdout = stdout()
  }
}