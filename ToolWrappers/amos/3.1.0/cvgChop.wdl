version 1.0

task CvgChop {
  input {
    Boolean? sum
    Boolean? build_map_coverage
    Int? cvg
    Boolean? by_scf
    Boolean? split
  }
  command <<<
    cvgChop \
      ~{if (sum) then "-sum" else ""} \
      ~{if (build_map_coverage) then "-map" else ""} \
      ~{if defined(cvg) then ("-cvg " +  '"' + cvg + '"') else ""} \
      ~{if (by_scf) then "-byscf" else ""} \
      ~{if (split) then "-split" else ""}
  >>>
  parameter_meta {
    sum: "- summarize the coverages"
    build_map_coverage: "- build map of coverage areas"
    cvg: "- create multi-fasta file of regions\\nin genome with > <min_cvg> coverage. (Default: 2)"
    by_scf: "- the contigs are reported in the order and orientation implied by\\nthe scaffolds.  Option requires -a."
    split: "- splits the contigs into chunks that have > 0 coverage over all length"
  }
  output {
    File out_stdout = stdout()
  }
}