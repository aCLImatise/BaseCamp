version 1.0

task Stat {
  input {
    Boolean? dereference
    Boolean? file_system
    String? format
    String? printf
    Boolean? terse
    String? option
  }
  command <<<
    stat \
      ~{option} \
      ~{true="--dereference" false="" dereference} \
      ~{true="--file-system" false="" file_system} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(printf) then ("--printf " +  '"' + printf + '"') else ""} \
      ~{true="--terse" false="" terse}
  >>>
  parameter_meta {
    dereference: "follow links"
    file_system: "display file system status instead of file status"
    format: "use the specified FORMAT instead of the default; output a newline after each use of FORMAT"
    printf: "like --format, but interpret backslash escapes, and do not output a mandatory trailing newline; if you want a newline, include \n in FORMAT"
    terse: "print the information in terse form"
    option: ""
  }
}