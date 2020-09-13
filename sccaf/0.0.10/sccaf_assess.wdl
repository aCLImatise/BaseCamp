version 1.0

task Sccafassess {
  input {
    File? input_file
    File? output_table
    File? external_clustering_tsv
    String? slot_for_existing_clustering
    Int? iterations
    Int? cores
    Boolean? use_pc_a
  }
  command <<<
    sccaf_assess \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_table) then ("--output-table " +  '"' + output_table + '"') else ""} \
      ~{if defined(external_clustering_tsv) then ("--external-clustering-tsv " +  '"' + external_clustering_tsv + '"') else ""} \
      ~{if defined(slot_for_existing_clustering) then ("--slot-for-existing-clustering " +  '"' + slot_for_existing_clustering + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (use_pc_a) then "--use-pca" else ""}
  >>>
  parameter_meta {
    input_file: "Path to input in AnnData or Loom"
    output_table: "Path for output file with table of accuracy and other\\nmetrics (required if iterations > 1)"
    external_clustering_tsv: "Path to external clustering in TSV"
    slot_for_existing_clustering: "Use clustering pre-computed in the input object,\\navailable in this slot of the object."
    iterations: "Number of times to iterate the assesment to build\\ndistributions of accuracies"
    cores: "Number of processors to use"
    use_pc_a: "Use PCA components for assesment (needs to be\\navailable in the ann data ) (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_table = "${in_output_table}"
  }
}