version 1.0

task SccafAssess {
  input {
    String? input_file
    String? output_table
    String? external_clustering_tsv
    String? slot_for_existing_clustering
    String? iterations
    String? cores
    Boolean? use_pc_a
  }
  command <<<
    sccaf-assess \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""} \
      ~{if defined(external_clustering_tsv) then ("--external-clustering-tsv " +  '"' + external_clustering_tsv + '"') else ""} \
      ~{if defined(slot_for_existing_clustering) then ("--slot-for-existing-clustering " +  '"' + slot_for_existing_clustering + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{true="--use-pca" false="" use_pc_a}
  >>>
  parameter_meta {
    input_file: "Path to input in AnnData or Loom"
    output_table: "Path for output file with table of accuracy and other metrics (required if iterations > 1)"
    external_clustering_tsv: "Path to external clustering in TSV"
    slot_for_existing_clustering: "Use clustering pre-computed in the input object, available in this slot of the object."
    iterations: "Number of times to iterate the assesment to build distributions of accuracies"
    cores: "Number of processors to use"
    use_pc_a: "Use PCA components for assesment (needs to be available in the ann data ) (default: False)"
  }
}