version 1.0

task GalahCluster {
  input {
    String? quality_formula
    String? pre_cluster_method
    String? pre_cluster_ani
    String? output_representative_list
    Directory? output_representative_fast_a_directory_copy
    Directory? output_representative_fast_a_directory
    String? output_cluster_definition
    Int? min_completeness
    Int? min_aligned_fraction
    Int? max_contamination
    String? genome_fast_a_extension
    Int? fragment_length
    String? ani
  }
  command <<<
    galah cluster \
      ~{if defined(quality_formula) then ("--quality-formula " +  '"' + quality_formula + '"') else ""} \
      ~{if defined(pre_cluster_method) then ("--precluster-method " +  '"' + pre_cluster_method + '"') else ""} \
      ~{if defined(pre_cluster_ani) then ("--precluster-ani " +  '"' + pre_cluster_ani + '"') else ""} \
      ~{if defined(output_representative_list) then ("--output-representative-list " +  '"' + output_representative_list + '"') else ""} \
      ~{if defined(output_representative_fast_a_directory_copy) then ("--output-representative-fasta-directory-copy " +  '"' + output_representative_fast_a_directory_copy + '"') else ""} \
      ~{if defined(output_representative_fast_a_directory) then ("--output-representative-fasta-directory " +  '"' + output_representative_fast_a_directory + '"') else ""} \
      ~{if defined(output_cluster_definition) then ("--output-cluster-definition " +  '"' + output_cluster_definition + '"') else ""} \
      ~{if defined(min_completeness) then ("--min-completeness " +  '"' + min_completeness + '"') else ""} \
      ~{if defined(min_aligned_fraction) then ("--min-aligned-fraction " +  '"' + min_aligned_fraction + '"') else ""} \
      ~{if defined(max_contamination) then ("--max-contamination " +  '"' + max_contamination + '"') else ""} \
      ~{if defined(genome_fast_a_extension) then ("--genome-fasta-extension " +  '"' + genome_fast_a_extension + '"') else ""} \
      ~{if defined(fragment_length) then ("--fragment-length " +  '"' + fragment_length + '"') else ""} \
      ~{if defined(ani) then ("--ani " +  '"' + ani + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galah:0.3.0--h516909a_0"
  }
  parameter_meta {
    quality_formula: ""
    pre_cluster_method: ""
    pre_cluster_ani: ""
    output_representative_list: ""
    output_representative_fast_a_directory_copy: ""
    output_representative_fast_a_directory: ""
    output_cluster_definition: ""
    min_completeness: ""
    min_aligned_fraction: ""
    max_contamination: ""
    genome_fast_a_extension: ""
    fragment_length: ""
    ani: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_representative_fast_a_directory_copy = "${in_output_representative_fast_a_directory_copy}"
    Directory out_output_representative_fast_a_directory = "${in_output_representative_fast_a_directory}"
  }
}