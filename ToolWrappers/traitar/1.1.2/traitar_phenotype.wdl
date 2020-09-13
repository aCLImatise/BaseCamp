version 1.0

task TraitarPhenotype {
  input {
    String? gene_gff_type
    Int? cpus
    String? primary_models
    String? secondary_models
    String? rearrange_heat_map
    Boolean? no_heat_map_sample_clustering
    Boolean? no_heat_map_phenotype_clustering
    String? heat_map_format
    String positional_arguments
    String input_dir
    Int sample_two_file
    String directory_output_will
  }
  command <<<
    traitar phenotype \
      ~{positional_arguments} \
      ~{input_dir} \
      ~{sample_two_file} \
      ~{directory_output_will} \
      ~{if defined(gene_gff_type) then ("--gene_gff_type " +  '"' + gene_gff_type + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(primary_models) then ("--primary_models " +  '"' + primary_models + '"') else ""} \
      ~{if defined(secondary_models) then ("--secondary_models " +  '"' + secondary_models + '"') else ""} \
      ~{if defined(rearrange_heat_map) then ("--rearrange_heatmap " +  '"' + rearrange_heat_map + '"') else ""} \
      ~{if (no_heat_map_sample_clustering) then "--no_heatmap_sample_clustering" else ""} \
      ~{if (no_heat_map_phenotype_clustering) then "--no_heatmap_phenotype_clustering" else ""} \
      ~{if defined(heat_map_format) then ("--heatmap_format " +  '"' + heat_map_format + '"') else ""}
  >>>
  parameter_meta {
    gene_gff_type: "if the input is amino acids the type of gene\\nprediction GFF file can be specified for mapping the\\nphenotype predictions to the genes"
    cpus: "number of cpus used for the individual steps; maximum\\nis number of samples; needs parallel"
    primary_models: "primary phenotype models archive"
    secondary_models: "secondary phenotype models archive"
    rearrange_heat_map: "recompute the phenotype heatmaps based on a subset of\\npreviously annotated and phenotyped samples"
    no_heat_map_sample_clustering: "if option is set, don't cluster the phenotype heatmaps\\nby samples and keep input ordering"
    no_heat_map_phenotype_clustering: "if option is set, don't cluster the heatmaps by\\nphenotype and keep input ordering"
    heat_map_format: "choose file format for the heatmap\\n"
    positional_arguments: "positional arguments:"
    input_dir: "directory with the input data"
    sample_two_file: "mapping from samples to fasta files (also see gitHub\\nhelp): sample1_file_name{tab}sample1_name\\nsample2_file_name{tab}sample2_name"
    directory_output_will: "directory for the output; will be created if it\\ndoesn't exist yet"
  }
  output {
    File out_stdout = stdout()
  }
}