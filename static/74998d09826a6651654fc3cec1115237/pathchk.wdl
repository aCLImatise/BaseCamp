version 1.0

task Pathchk {
  input {
    Boolean? check_most_posix
    Boolean? check_empty_names
    Boolean? portability
  }
  command <<<
    pathchk \
      ~{if (check_most_posix) then "-p" else ""} \
      ~{if (check_empty_names) then "-P" else ""} \
      ~{if (portability) then "--portability" else ""}
  >>>
  parameter_meta {
    check_most_posix: "check for most POSIX systems"
    check_empty_names: "check for empty names and leading \\\"-\\\""
    portability: "check for all POSIX systems (equivalent to -p -P)"
  }
  output {
    File out_stdout = stdout()
  }
}