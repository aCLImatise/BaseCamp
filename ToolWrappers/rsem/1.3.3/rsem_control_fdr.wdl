version 1.0

task Rsemcontrolfdr {
  input {
    Boolean? hard_threshold
    Boolean? soft_threshold
    String input_file
    String fdr_rate
    String output_file
  }
  command <<<
    rsem_control_fdr \
      ~{input_file} \
      ~{fdr_rate} \
      ~{output_file} \
      ~{if (hard_threshold) then "--hard-threshold" else ""} \
      ~{if (soft_threshold) then "--soft-threshold" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hard_threshold: "Use hard threshold method to control FDR. If this option is set,\\nonly those genes/transcripts with their PPDE >= 1 - fdr_rate are\\ncalled as DE. (Default: on)"
    soft_threshold: "Use soft threshold method to control FDR. If this option is set,\\nthis program will try to report as many genes/transcripts as\\npossible, as long as their average PPDE >= 1 - fdr_rate. This option\\nis equivalent to use EBSeq's 'crit_fun' for FDR control. (Default:\\noff)"
    input_file: "This should be the main result file generated by 'rsem-run-ebseq',\\nwhich contains all genes/transcripts and their associated\\nstatistics."
    fdr_rate: "The desire false discovery rate (FDR)."
    output_file: "This file is a subset of the 'input_file'. It only contains the\\ngenes/transcripts called as differentially expressed (DE). When more\\nthan 2 conditions exist, DE is defined as not all conditions are\\nequally expressed. Because statistical significance does not\\nnecessarily mean biological significance, users should also refer to\\nthe fold changes to decide which genes/transcripts are biologically\\nsignificant. When more than two conditions exist, this file will not\\ncontain fold change information and users need to calculate it from\\n'input_file.condmeans' by themselves."
  }
  output {
    File out_stdout = stdout()
  }
}