version 1.0

task TraitarPhenotype {
  input {
    String? gene_gff_type
    String? cpus
    String? primary_models
    String? secondary_models
    String? rearrange_heat_map
    Boolean? no_heat_map_sample_clustering
    Boolean? no_heat_map_phenotype_clustering
    String? heat_map_format
    String output_dir
  }
  command <<<
    traitar phenotype \
      ~{output_dir} \
      ~{if defined(gene_gff_type) then ("--gene_gff_type " +  '"' + gene_gff_type + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(primary_models) then ("--primary_models " +  '"' + primary_models + '"') else ""} \
      ~{if defined(secondary_models) then ("--secondary_models " +  '"' + secondary_models + '"') else ""} \
      ~{if defined(rearrange_heat_map) then ("--rearrange_heatmap " +  '"' + rearrange_heat_map + '"') else ""} \
      ~{true="--no_heatmap_sample_clustering" false="" no_heat_map_sample_clustering} \
      ~{true="--no_heatmap_phenotype_clustering" false="" no_heat_map_phenotype_clustering} \
      ~{if defined(heat_map_format) then ("--heatmap_format " +  '"' + heat_map_format + '"') else ""}
  >>>
  parameter_meta {
    gene_gff_type: "if the input is amino acids the type of gene prediction GFF file can be specified for mapping the phenotype predictions to the genes"
    cpus: "number of cpus used for the individual steps; maximum is number of samples; needs parallel"
    primary_models: "primary phenotype models archive"
    secondary_models: "secondary phenotype models archive"
    rearrange_heat_map: "recompute the phenotype heatmaps based on a subset of previously annotated and phenotyped samples"
    no_heat_map_sample_clustering: "if option is set, don't cluster the phenotype heatmaps by samples and keep input ordering"
    no_heat_map_phenotype_clustering: "if option is set, don't cluster the heatmaps by phenotype and keep input ordering"
    heat_map_format: "choose file format for the heatmap"
    output_dir: "directory for the output; will be created if it doesn't exist yet"
  }
}