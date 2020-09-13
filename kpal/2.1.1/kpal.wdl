version 1.0

task Kpal {
  input {
    Boolean? show_programs_version
  }
  command <<<
    kpal \
      ~{if (show_programs_version) then "-v" else ""}
  >>>
  parameter_meta {
    show_programs_version: "show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}