version 1.0

task PoretoolsTimes {
  input {
    Boolean? quiet
    Boolean? utc
    String files
  }
  command <<<
    poretools times \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (utc) then "--utc" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    utc: "Show timestamps in UTC."
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}