version 1.0

task Perlivp {
  input {
    String? preface_test_telling
    String? mode_information_print
    String? this_help_message
  }
  command <<<
    perlivp \
      ~{if defined(preface_test_telling) then ("-p " +  '"' + preface_test_telling + '"') else ""} \
      ~{if defined(mode_information_print) then ("-v " +  '"' + mode_information_print + '"') else ""} \
      ~{if defined(this_help_message) then ("-h " +  '"' + this_help_message + '"') else ""}
  >>>
  parameter_meta {
    preface_test_telling: "a preface before each test telling what it will test."
    mode_information_print: "mode in which extra information about test results\\nis printed.  Test failures always print out some extra information\\nregardless of whether or not this switch is set."
    this_help_message: "this help message."
  }
  output {
    File out_stdout = stdout()
  }
}