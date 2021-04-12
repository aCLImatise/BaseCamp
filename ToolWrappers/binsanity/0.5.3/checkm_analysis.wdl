version 1.0

task CheckmAnalysis {
  input {
    File? check_m
    File? identify_what_suffix
    String suffix
  }
  command <<<
    checkm_analysis \
      ~{suffix} \
      ~{if defined(check_m) then ("-checkM " +  '"' + check_m + '"') else ""} \
      ~{if defined(identify_what_suffix) then ("-f " +  '"' + identify_what_suffix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0"
  }
  parameter_meta {
    check_m: "Specify the CHeckM output File (should be the one created using --tab_table"
    identify_what_suffix: "Identify what your suffix for fasta file is [default: .fna]"
    suffix: ""
  }
  output {
    File out_stdout = stdout()
    File out_check_m = "${in_check_m}"
  }
}