version 1.0

task ScranclifiltersceR {
  input {
    File? input_sce_object
    String? exprs_values
    Int? min_genes
    Int? min_cells
    Int? spikes
    Int? n_spikes
    String? log
    File? output_sce_object
  }
  command <<<
    scran_cli_filter_sce_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(exprs_values) then ("--exprs-values " +  '"' + exprs_values + '"') else ""} \
      ~{if defined(min_genes) then ("--min-genes " +  '"' + min_genes + '"') else ""} \
      ~{if defined(min_cells) then ("--min-cells " +  '"' + min_cells + '"') else ""} \
      ~{if defined(spikes) then ("--spikes " +  '"' + spikes + '"') else ""} \
      ~{if defined(n_spikes) then ("--n-spikes " +  '"' + n_spikes + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    exprs_values: "String indicating which assay contains the count data that should be used to compute log-transformed expression values."
    min_genes: "Minimum number of genes to be expressed per cell to pass filtering."
    min_cells: "Minimum number of cells for a gene to be expressed to pass filtering."
    spikes: "String or integer scalar specifying the alternative experiment containing the spike-in transcripts. Default; \\\"ERCC\\\""
    n_spikes: "Integer specifying the number of genes to add as spike-ins in case there is are no spike-ins in the \\\"ERCC\\\" slot. Default: 25."
    log: "Logical specifying wether log-transformation of CPM counts should be performed."
    output_sce_object: "File name in which to store serialized R object of type 'SingleCellExperiment'."
  }
  output {
    File out_stdout = stdout()
  }
}