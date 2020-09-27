version 1.0

task PoretoolsMetadata {
  input {
    Boolean? quiet
    Boolean? read
    String files
  }
  command <<<
    poretools metadata \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (read) then "--read" else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    read: "Report read level metadata"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}