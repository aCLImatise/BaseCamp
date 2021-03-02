version 1.0

task PoretoolsStats {
  input {
    Boolean? quiet
    String? type
    Boolean? full_tsv
    Int? group
    String files
  }
  command <<<
    poretools stats \
      ~{files} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (full_tsv) then "--full-tsv" else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    type: "Which type of FASTQ entries should be reported? Def.=all"
    full_tsv: "Verbose output in tab-separated format."
    group: "Base calling group serial number to extract, default 000"
    files: "The input FAST5 files."
  }
  output {
    File out_stdout = stdout()
  }
}