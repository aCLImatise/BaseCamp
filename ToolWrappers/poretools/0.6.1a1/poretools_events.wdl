version 1.0

task PoretoolsEvents {
  input {
    Boolean? quiet
    Boolean? pre_base_called
    String files
  }
  command <<<
    poretools events \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (pre_base_called) then "--pre-basecalled" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    pre_base_called: "Report pre-basecalled events"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}