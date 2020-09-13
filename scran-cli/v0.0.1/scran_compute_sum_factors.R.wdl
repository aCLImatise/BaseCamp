version 1.0

task ScrancomputesumfactorsR {
  input {
    File? input_sce_object
    String? assay_type
    Int? sizes
    String? clusters
    Int? subset_row
    String? get_spikes
    Int? scaling
    Int? min_mean
    Int? output_sce_object
  }
  command <<<
    scran_compute_sum_factors_R \
      ~{if defined(input_sce_object) then ("--input-sce-object " +  '"' + input_sce_object + '"') else ""} \
      ~{if defined(assay_type) then ("--assay-type " +  '"' + assay_type + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(clusters) then ("--clusters " +  '"' + clusters + '"') else ""} \
      ~{if defined(subset_row) then ("--subset-row " +  '"' + subset_row + '"') else ""} \
      ~{if defined(get_spikes) then ("--get-spikes " +  '"' + get_spikes + '"') else ""} \
      ~{if defined(scaling) then ("--scaling " +  '"' + scaling + '"') else ""} \
      ~{if defined(min_mean) then ("--min_mean " +  '"' + min_mean + '"') else ""} \
      ~{if defined(output_sce_object) then ("--output-sce-object " +  '"' + output_sce_object + '"') else ""}
  >>>
  parameter_meta {
    input_sce_object: "Path to the input SCE object in rds format."
    assay_type: "Specify which assay values to use. Default: \\\"logcounts\\\"."
    sizes: "A numeric vector of pool sizes, i.e., number of cells per pool."
    clusters: "An optional factor specifying which cells belong to which cluster, for deconvolution within clusters. For large data sets, clustering should be performed with the quickCluster function before normalization."
    subset_row: "Logical, integer or character vector indicating the rows of SCE to use. If a character vector, it must contain the names of the rows in SCE."
    get_spikes: "If get-spikes = FALSE, spike-in transcripts are automatically removed. If get.spikes=TRUE, no filtering on the spike-in transcripts will be performed."
    scaling: "A numeric scalar containing scaling factors to adjust the counts prior to computing size factors."
    min_mean: "A numeric scalar specifying the minimum (library size-adjusted) average count of genes to be used for normalization."
    output_sce_object: "Path to the output SCE object containing the vector of size factors in sizeFactors(x)."
  }
  output {
    File out_stdout = stdout()
  }
}