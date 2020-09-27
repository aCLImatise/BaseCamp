version 1.0

task StatsFromBam {
  input {
    File? bed
    Boolean? all_alignments
    String? o
    String? m
  }
  command <<<
    stats_from_bam \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if (all_alignments) then "--all_alignments" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    bed: ".bed file of reference regions to include. (default:"
    all_alignments: "Include secondary and supplementary alignments."
    o: ""
    m: ""
  }
  output {
    File out_stdout = stdout()
  }
}