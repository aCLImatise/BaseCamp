version 1.0

task Perlreversion {
  input {
    String updated_dot
    String version_dot
    String displayed_dot
  }
  command <<<
    perl_reversion \
      ~{updated_dot} \
      ~{version_dot} \
      ~{displayed_dot}
  >>>
  parameter_meta {
    updated_dot: "\\\"-normal\\\""
    version_dot: "Alone, these options control how the current (found) version is"
    displayed_dot: "With \\\"-bump\\\" or \\\"-set\\\", also update version strings to have the"
  }
  output {
    File out_stdout = stdout()
  }
}