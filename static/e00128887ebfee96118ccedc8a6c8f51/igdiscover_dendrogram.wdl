version 1.0

task IgdiscoverDendrogram {
  input {
    File? mark
    String? method
    String fast_a
    String plot
  }
  command <<<
    igdiscover dendrogram \
      ~{fast_a} \
      ~{plot} \
      ~{if defined(mark) then ("--mark " +  '"' + mark + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    mark: "Path to a FASTA file with a set of \\\"known\\\" sequences.\\nSequences in the main file that do *not* occur here\\nwill be marked with (new). If not given, no sequences\\nwill be marked (use this to compare two databases)."
    method: "Linkage method. Default: \\\"average\\\" (=UPGMA)\\n"
    fast_a: "Path to input FASTA file"
    plot: "Path to output PDF or PNG"
  }
  output {
    File out_stdout = stdout()
  }
}