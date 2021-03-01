version 1.0

task Pathchk {
  input {
    Boolean? check_most_posix
    Boolean? check_empty_leading
    Boolean? portability
  }
  command <<<
    pathchk \
      ~{if (check_most_posix) then "-p" else ""} \
      ~{if (check_empty_leading) then "-P" else ""} \
      ~{if (portability) then "--portability" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check_most_posix: "check for most POSIX systems"
    check_empty_leading: "check for empty names and leading \\\"-\\\""
    portability: "check for all POSIX systems (equivalent to -p -P)"
  }
  output {
    File out_stdout = stdout()
  }
}