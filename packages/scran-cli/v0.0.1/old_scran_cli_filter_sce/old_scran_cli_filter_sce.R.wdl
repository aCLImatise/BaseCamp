version 1.0

task OldscranclifiltersceR {
  input {
    File? input_sce_object
    String? exprs_values
    Int? n_genes
    Int? n_cells
    Int? spikes
    File? output_sce_object
  }
  command <<<
    old_scran_cli_filter_sce_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(n_genes) then ("--n-genes " +  '"' + n_genes + '"') else ""} \
      ~{if defined(n_cells) then ("--n-cells " +  '"' + n_cells + '"') else ""} \
      ~{if defined(spikes) then ("--spikes " +  '"' + spikes + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "File name in which a serialized R SingleCellExperiment object where object matrix found"
    exprs_values: "String indicating which assay contains the count data that should be used to compute log-transformed expression values."
    n_genes: "Integer indicating how many genes should we sample from the input object."
    n_cells: "Integer indicating how many cells should we sample from the input object."
    spikes: "String or integer scalar specifying the alternative experiment containing the spike-in transcripts."
    output_sce_object: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
  }
}