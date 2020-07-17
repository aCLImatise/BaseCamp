version 1.0

task GarnettCheckMarkers.R {
  input {
    String? database
    String? cds_gene_id_type
    String? marker_file_gene_id_type
    String? marker_output_path
    String? plot_output_path
    Boolean? propogate_markers
    Boolean? use_tf_idf
    String? classifier_gene_id_type
    String? amb_marker_cut_off
    String? label_size
  }
  command <<<
    garnett_check_markers.R \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(cds_gene_id_type) then ("--cds-gene-id-type " +  '"' + cds_gene_id_type + '"') else ""} \
      ~{if defined(marker_file_gene_id_type) then ("--marker-file-gene-id-type " +  '"' + marker_file_gene_id_type + '"') else ""} \
      ~{if defined(marker_output_path) then ("--marker-output-path " +  '"' + marker_output_path + '"') else ""} \
      ~{if defined(plot_output_path) then ("--plot-output-path " +  '"' + plot_output_path + '"') else ""} \
      ~{true="--propogate-markers" false="" propogate_markers} \
      ~{true="--use-tf-idf" false="" use_tf_idf} \
      ~{if defined(classifier_gene_id_type) then ("--classifier-gene-id-type " +  '"' + classifier_gene_id_type + '"') else ""} \
      ~{if defined(amb_marker_cut_off) then ("--amb-marker-cutoff " +  '"' + amb_marker_cut_off + '"') else ""} \
      ~{if defined(label_size) then ("--label-size " +  '"' + label_size + '"') else ""}
  >>>
  parameter_meta {
    database: "argument for Bioconductor AnnotationDb-class package used for converting gene IDs. For example, use org.Hs.eg.db for Homo Sapiens genes."
    cds_gene_id_type: "Format of the gene IDs in your CDS object. The default is \"ENSEMBL\"."
    marker_file_gene_id_type: "Format of the gene IDs in your marker file. The default is \"ENSEMBL\"."
    marker_output_path: "Path to the output file with marker scores"
    plot_output_path: "Optional. If you would like to make a marker plot, provide a name (path) for it."
    propogate_markers: "Optional. Should markers from child nodes of a cell type be used in finding representatives of the parent type? Default: TRUE."
    use_tf_idf: "Optional. Should TF-IDF matrix be calculated during estimation? If TRUE, estimates will be more accurate, but calculation is slower with very large datasets. Default: TRUE."
    classifier_gene_id_type: "Optional. The type of gene ID that will be used in the classifier. If possible for your organism, this should be 'ENSEMBL', which is the default. Ignored if db = 'none'."
    amb_marker_cut_off: "(Plotting option). Numeric; Cutoff at which to label ambiguous markers. Default 0.5."
    label_size: "(Plotting option). Numeric, size of the text labels for ambiguous markers and unplotted markers."
  }
}