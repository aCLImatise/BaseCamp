version 1.0

task AddFeatureToMatrix {
  input {
    String? matrix
    String? output_matrix_default
    Array[String] feature_dot_tables
    String? annotation_feature
    String? filtered_genome_gtf_output_file
    String? genome_gtf
    Array[String] feature_names
    String? feature_id_column
    String? reference_point
    String? closest_genes_output
  }
  command <<<
    addFeatureToMatrix \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(output_matrix_default) then ("--output " +  '"' + output_matrix_default + '"') else ""} \
      ~{if defined(feature_dot_tables) then ("--feature.tables " +  '"' + feature_dot_tables + '"') else ""} \
      ~{if defined(annotation_feature) then ("--annotationFeature " +  '"' + annotation_feature + '"') else ""} \
      ~{if defined(filtered_genome_gtf_output_file) then ("--filteredGenomeGtfOutputFile " +  '"' + filtered_genome_gtf_output_file + '"') else ""} \
      ~{if defined(genome_gtf) then ("--genomeGtf " +  '"' + genome_gtf + '"') else ""} \
      ~{if defined(feature_names) then ("--featureNames " +  '"' + feature_names + '"') else ""} \
      ~{if defined(feature_id_column) then ("--featureIdColumn " +  '"' + feature_id_column + '"') else ""} \
      ~{if defined(reference_point) then ("--referencePoint " +  '"' + reference_point + '"') else ""} \
      ~{if defined(closest_genes_output) then ("--closestGenesOutput " +  '"' + closest_genes_output + '"') else ""}
  >>>
  parameter_meta {
    matrix: "deeptools matrix (default: None)"
    output_matrix_default: "output matrix (default: None)"
    feature_dot_tables: "gene id tables or name based tables, tables should be space-separated. (default: None)"
    annotation_feature: "annotation file can be filtered by a feature such as gene, exon or transcript (default: None)"
    filtered_genome_gtf_output_file: "saving filtered annotation file if --annotationFeature (default: None)"
    genome_gtf: "genome annotation (gtf) to map peaks to closest gene. Will be filtered through '--annotationFeature' (default: None)"
    feature_names: "A list of features of interest from gene id tables or name based tables (default: ['log2(FC)'])"
    feature_id_column: "name of the column includes ids/names (default: GeneID)"
    reference_point: "If closest TSS or TES is needed, otherwise closest gene body will be found (default: None)"
    closest_genes_output: "A bed file to save the closest genes (default: None)"
  }
}