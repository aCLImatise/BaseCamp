version 1.0

task Clust {
  input {
    Int? normalisation_file_list
    File? replicates_structure_file
    File? orthogroups_ogs_mapping
    Directory? output_directory
    Int? cluster_tightness_default
    String? base_methods
    Int? k_values_eg
    Int? outlier_standard_deviations
    Int? min_datasets_exist
    Int? fil_v
    Int? fil_c
    Int? fil_d
    Boolean? fil_abs
    Boolean? fil_perc
    Boolean? fil_flat
    Boolean? no_fil_flat
    Int? cs
    Int? q_threes
    Boolean? no_optimisation
    Boolean? deterministic
    Int? np
    Int? file_or_int
  }
  command <<<
    clust \
      ~{file_or_int} \
      ~{if defined(normalisation_file_list) then ("-n " +  '"' + normalisation_file_list + '"') else ""} \
      ~{if defined(replicates_structure_file) then ("-r " +  '"' + replicates_structure_file + '"') else ""} \
      ~{if defined(orthogroups_ogs_mapping) then ("-m " +  '"' + orthogroups_ogs_mapping + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(cluster_tightness_default) then ("-t " +  '"' + cluster_tightness_default + '"') else ""} \
      ~{if defined(base_methods) then ("-basemethods " +  '"' + base_methods + '"') else ""} \
      ~{if defined(k_values_eg) then ("-K " +  '"' + k_values_eg + '"') else ""} \
      ~{if defined(outlier_standard_deviations) then ("-s " +  '"' + outlier_standard_deviations + '"') else ""} \
      ~{if defined(min_datasets_exist) then ("-d " +  '"' + min_datasets_exist + '"') else ""} \
      ~{if defined(fil_v) then ("-fil-v " +  '"' + fil_v + '"') else ""} \
      ~{if defined(fil_c) then ("-fil-c " +  '"' + fil_c + '"') else ""} \
      ~{if defined(fil_d) then ("-fil-d " +  '"' + fil_d + '"') else ""} \
      ~{if (fil_abs) then "--fil-abs" else ""} \
      ~{if (fil_perc) then "--fil-perc" else ""} \
      ~{if (fil_flat) then "--fil-flat" else ""} \
      ~{if (no_fil_flat) then "--no-fil-flat" else ""} \
      ~{if defined(cs) then ("-cs " +  '"' + cs + '"') else ""} \
      ~{if defined(q_threes) then ("-q3s " +  '"' + q_threes + '"') else ""} \
      ~{if (no_optimisation) then "--no-optimisation" else ""} \
      ~{if (deterministic) then "--deterministic" else ""} \
      ~{if defined(np) then ("-np " +  '"' + np + '"') else ""}
  >>>
  parameter_meta {
    normalisation_file_list: "[<file or int> ...]\\nNormalisation file or list of codes (default: 1000)"
    replicates_structure_file: "Replicates structure file"
    orthogroups_ogs_mapping: "OrthoGroups (OGs) mapping file"
    output_directory: "Output directory"
    cluster_tightness_default: "Cluster tightness (default: 1.0)."
    base_methods: "[<string> ...]\\nOne or more base clustering methods (default: k-means)"
    k_values_eg: "[<integer> ...]\\nK values, e.g. 2 4 6 10 ... (default: 4 to 20 (step=4))"
    outlier_standard_deviations: "Outlier standard deviations (default: 3.0)"
    min_datasets_exist: "Min datasets in which a gene must exist (default: 1)"
    fil_v: "Filtering: gene expression threshold (default: -inf)"
    fil_c: "Filtering: number of conditions (default: 0)"
    fil_d: "Filtering: number of datasets (default: 0)"
    fil_abs: "Filter using absolute values of expression"
    fil_perc: "-fil-v is a percentile of genes rather than raw value"
    fil_flat: "Filter out genes with flat expression profiles (default)"
    no_fil_flat: "Cancels the default --fil-flat option"
    cs: "Smallest cluster size (default: 11)"
    q_threes: "Q3s defining outliers (default: 2.0)"
    no_optimisation: "Skip cluster optimsation & completion"
    deterministic: "Obsolete. All steps are already deterministic (v1.7.4+)"
    np: "Obsolete. Number of parallel processes (default: 1)"
    file_or_int: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}