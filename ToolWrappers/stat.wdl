version 1.0

task Stat {
  input {
    Boolean? dereference
    Boolean? file_system
    String? format
    String? printf
    Boolean? terse
  }
  command <<<
    stat \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if (file_system) then "--file-system" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(printf) then ("--printf " +  '"' + printf + '"') else ""} \
      ~{if (terse) then "--terse" else ""}
  >>>
  parameter_meta {
    dereference: "follow links"
    file_system: "display file system status instead of file status"
    format: "use the specified FORMAT instead of the default;\\noutput a newline after each use of FORMAT"
    printf: "like --format, but interpret backslash escapes,\\nand do not output a mandatory trailing newline;\\nif you want a newline, include \\n in FORMAT"
    terse: "print the information in terse form"
  }
  output {
    File out_stdout = stdout()
  }
}