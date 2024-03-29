version 1.0

task PoretoolsIndex {
  input {
    Boolean? quiet
    String files
  }
  command <<<
    poretools index \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}