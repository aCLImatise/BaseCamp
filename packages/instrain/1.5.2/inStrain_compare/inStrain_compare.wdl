version 1.0

task InStrainCompare {
  input {
    Boolean? list_instrain_none
    String? output_prefix_default
    Int? processes
    Boolean? debug
    Boolean? scaffold_bin_be
    Int? min_cov
    Int? min_freq
    Float? fdr
    Boolean? database_mode
    Float? breadth
    File? scaffolds
    File? genome
    Boolean? store_coverage_overlap
    Boolean? store_mismatch_locations
    Boolean? include_self_comparisons
    Boolean? skip_plot_generation
    Int? group_length
    File? ani_threshold
    Float? coverage_treshold
    String? cluster_alg
    String? var_input
  }
  command <<<
    inStrain compare \
      ~{var_input} \
      ~{if (list_instrain_none) then "-i" else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (scaffold_bin_be) then "-s" else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if (database_mode) then "--database_mode" else ""} \
      ~{if defined(breadth) then ("--breadth " +  '"' + breadth + '"') else ""} \
      ~{if defined(scaffolds) then ("--scaffolds " +  '"' + scaffolds + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (store_coverage_overlap) then "--store_coverage_overlap" else ""} \
      ~{if (store_mismatch_locations) then "--store_mismatch_locations" else ""} \
      ~{if (include_self_comparisons) then "--include_self_comparisons" else ""} \
      ~{if (skip_plot_generation) then "--skip_plot_generation" else ""} \
      ~{if defined(group_length) then ("--group_length " +  '"' + group_length + '"') else ""} \
      ~{if defined(ani_threshold) then ("--ani_threshold " +  '"' + ani_threshold + '"') else ""} \
      ~{if defined(coverage_treshold) then ("--coverage_treshold " +  '"' + coverage_treshold + '"') else ""} \
      ~{if defined(cluster_alg) then ("--clusterAlg " +  '"' + cluster_alg + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.2--py_0"
  }
  parameter_meta {
    list_instrain_none: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\\nA list of inStrain objects, all mapped to the same\\n.fasta file (default: None)"
    output_prefix_default: "Output prefix (default: instrainComparer)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    scaffold_bin_be: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    min_cov: "Minimum coverage to call an variant (default: 5)"
    min_freq: "Minimum SNP frequency to confirm a SNV (both this AND\\nthe FDR snp count cutoff must be true to call a SNP).\\n(default: 0.05)"
    fdr: "SNP false discovery rate- based on simulation data\\nwith a 0.1 percent error rate (Q30) (default: 1e-06)"
    database_mode: "Using the parameters below, automatically determine\\nwhich genomes are present in each Profile and only\\ncompare scaffolds from those genomes. All profiles\\nmust have run Profile with the same .stb (default:\\nFalse)"
    breadth: "Minimum breadth_minCov required to count a genome\\npresent (default: 0.5)"
    scaffolds: "Location to a list of scaffolds to compare. You can\\nalso make this a .fasta file and it will load the\\nscaffold names (default: None)"
    genome: "Run scaffolds belonging to this single genome only.\\nMust provide an .stb file (default: None)"
    store_coverage_overlap: "Also store coverage overlap on an mm level (default:\\nFalse)"
    store_mismatch_locations: "Store the locations of SNPs (default: False)"
    include_self_comparisons: "Also compare IS profiles against themself (default:\\nFalse)"
    skip_plot_generation: "Dont create plots at the end of the run. (default:\\nFalse)"
    group_length: "How many bp to compare simultaneously (higher will use\\nmore RAM and run more quickly) (default: 10000000)"
    ani_threshold: "popANI threshold to cluster genomes at. Must provide\\n.stb file to do so (default: 0.99999)"
    coverage_treshold: "Minimum percent_genome_compared for a genome\\ncomparison to count; if below the popANI will be set\\nto 0. (default: 0.1)"
    cluster_alg: "Algorithm used to cluster genomes (passed to\\nscipy.cluster.hierarchy.linkage) (default: average)\\n"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}