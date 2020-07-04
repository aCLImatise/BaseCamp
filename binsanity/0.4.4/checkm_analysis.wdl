version 1.0

task CheckmAnalysis {
  input {
    String? check_m
    String? identify_what_suffix
    String suffix
  }
  command <<<
    checkm_analysis \
      ~{suffix} \
      ~{if defined(check_m) then ("-checkM " +  '"' + check_m + '"') else ""} \
      ~{if defined(identify_what_suffix) then ("-f " +  '"' + identify_what_suffix + '"') else ""}
  >>>
  parameter_meta {
    check_m: "Specify the CHeckM output File (should be the one created using --tab_table"
    identify_what_suffix: "Identify what your suffix for fasta file is [default: .fna]"
    suffix: ""
  }
}