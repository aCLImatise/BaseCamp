version 1.0

task HgFakeAgp {
  input {
    Int? min_contig_gap
    Int? min_scaffold_gap
    Boolean? single_contigs
    String input_dot_fa
  }
  command <<<
    hgFakeAgp \
      ~{input_dot_fa} \
      ~{if defined(min_contig_gap) then ("-minContigGap " +  '"' + min_contig_gap + '"') else ""} \
      ~{if defined(min_scaffold_gap) then ("-minScaffoldGap " +  '"' + min_scaffold_gap + '"') else ""} \
      ~{if (single_contigs) then "-singleContigs" else ""}
  >>>
  parameter_meta {
    min_contig_gap: "Minimum size for a gap between contigs.  Default 25"
    min_scaffold_gap: "Min size for a gap between scaffolds. Default 50000"
    single_contigs: "- when a full sequence has no gaps, maintain contig\\nname without adding index extension.\\n"
    input_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}