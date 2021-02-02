version 1.0

task PoretoolsQualdist {
  input {
    Boolean? quiet
    String files
  }
  command <<<
    poretools qualdist \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}