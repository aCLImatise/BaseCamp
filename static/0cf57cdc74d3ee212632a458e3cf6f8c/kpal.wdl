version 1.0

task Kpal {
  input {
    Boolean? show_programs_number
  }
  command <<<
    kpal \
      ~{if (show_programs_number) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_programs_number: "show program's version number and exit"
  }
  output {
    File out_stdout = stdout()
  }
}