version 1.0

task InStrainCompare {
  input {
    Boolean? list_instrain_none
    String? output_prefix_default
    Int? processes
    Boolean? debug
    Int? min_cov
    Int? min_freq
    Float? fdr
    File? scaffolds
    Boolean? store_coverage_overlap
    Boolean? store_mismatch_locations
    Boolean? include_self_comparisons
    Boolean? greedy_clustering
    Float? g_ani
    Float? g_cov
    Int? g_mm
    String? var_input
  }
  command <<<
    inStrain compare \
      ~{var_input} \
      ~{if (list_instrain_none) then "-i" else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(scaffolds) then ("--scaffolds " +  '"' + scaffolds + '"') else ""} \
      ~{if (store_coverage_overlap) then "--store_coverage_overlap" else ""} \
      ~{if (store_mismatch_locations) then "--store_mismatch_locations" else ""} \
      ~{if (include_self_comparisons) then "--include_self_comparisons" else ""} \
      ~{if (greedy_clustering) then "--greedy_clustering" else ""} \
      ~{if defined(g_ani) then ("--g_ani " +  '"' + g_ani + '"') else ""} \
      ~{if defined(g_cov) then ("--g_cov " +  '"' + g_cov + '"') else ""} \
      ~{if defined(g_mm) then ("--g_mm " +  '"' + g_mm + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_instrain_none: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\\nA list of inStrain objects, all mapped to the same\\n.fasta file (default: None)"
    output_prefix_default: "Output prefix (default: instrainComparer)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    min_cov: "Minimum coverage to call an variant (default: 5)"
    min_freq: "Minimum SNP frequency to confirm a SNV (both this AND\\nthe FDR snp count cutoff must be true to call a SNP).\\n(default: 0.05)"
    fdr: "SNP false discovery rate- based on simulation data\\nwith a 0.1 percent error rate (Q30) (default: 1e-06)"
    scaffolds: "Location to a list of scaffolds to compare. You can\\nalso make this a .fasta file and it will load the\\nscaffold names (default: None)"
    store_coverage_overlap: "Also store coverage overlap on an mm level (default:\\nFalse)"
    store_mismatch_locations: "Store the locations of SNPs (default: False)"
    include_self_comparisons: "Also compare IS profiles against themself (default:\\nFalse)"
    greedy_clustering: "Dont do pair-wise comparisons, do greedy clustering to\\nonly find the number of clsuters. If this is set, use\\nthe parameters below as well (default: False)"
    g_ani: "ANI threshold for greedy clustering- put the fraction\\nnot the percentage (e.g. 0.99, not 99) (default: 0.99)"
    g_cov: "Alignment coverage for greedy clustering- put the\\nfraction not the percentage (e.g. 0.5, not 10)\\n(default: 0.99)"
    g_mm: "Maximum read mismatch level (default: 100)"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}