version 1.0

task Phame {
  input {
    String? help_message_exit
    Int? version_number_exit
    File? v_check
    File control_file
  }
  command <<<
    phame \
      ~{control_file} \
      ~{if defined(help_message_exit) then ("-h " +  '"' + help_message_exit + '"') else ""} \
      ~{if defined(version_number_exit) then ("-v " +  '"' + version_number_exit + '"') else ""} \
      ~{if defined(v_check) then ("--vcheck " +  '"' + v_check + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help_message_exit: "this help message and exit"
    version_number_exit: "version number and exit"
    v_check: "if all depenencies are correct and in path."
    control_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}