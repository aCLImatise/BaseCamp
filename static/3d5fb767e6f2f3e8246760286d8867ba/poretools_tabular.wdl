version 1.0

task PoretoolsTabular {
  input {
    Boolean? quiet
    String? type
    String files
  }
  command <<<
    poretools tabular \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    type: "Which type of FASTA entries should be reported? Def.=all"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}