version 1.0

task Kpal {
  input {
    Boolean? show_programs_version
  }
  command <<<
    kpal \
      ~{true="-v" false="" show_programs_version}
  >>>
  parameter_meta {
    show_programs_version: "show program's version number and exit"
  }
}