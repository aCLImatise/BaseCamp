version 1.0

task AnalyzeRNA.pl {
  input {
    Boolean? or
    String rna_vertical_line_repeats
    String genome_version
    String? additional
    String? options_dot_dot_dot
  }
  command <<<
    analyzeRNA.pl \
      ~{rna_vertical_line_repeats} \
      ~{genome_version} \
      ~{additional} \
      ~{options_dot_dot_dot} \
      ~{true="-or-" false="" or}
  >>>
  parameter_meta {
    or: ": analyzeRNA.pl <custom RNA/GTF file> <organism|none>  [additional options...]"
    rna_vertical_line_repeats: ""
    genome_version: ""
    additional: ""
    options_dot_dot_dot: ""
  }
}