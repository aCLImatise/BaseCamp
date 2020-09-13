version 1.0

task Checkdisorderpl {
  input {
    Boolean? list
  }
  command <<<
    check_disorder_pl \
      ~{if (list) then "--list" else ""}
  >>>
  parameter_meta {
    list: "list all IDs that have children features appearing in front of themselves"
  }
  output {
    File out_stdout = stdout()
  }
}