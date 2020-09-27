version 1.0

task LynerTargets {
  input {
    File? targets
  }
  command <<<
    lyner targets \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""}
  >>>
  parameter_meta {
    targets: "-f, --from-file FILENAME\\n-m, --mode [exclude|intersect]\\n--help                          Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}