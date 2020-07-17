version 1.0

task GaasBedCreateRandomFeature.pl {
  input {
    String? genome
    Boolean? size
    Boolean? number_gene
    Boolean? size_gene
    String? string_output_file
    String gaas_create_random_feature_do_tpl
  }
  command <<<
    gaas_bed_create_random_feature.pl \
      ~{gaas_create_random_feature_do_tpl} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--size" false="" size} \
      ~{true="--number_gene" false="" number_gene} \
      ~{true="--size_gene" false="" size_gene} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    genome: "STRING: Name to use for writing in first column of the bed file. default chr_unknown."
    size: "INTEGER: Genome size. It define the range where features will be created."
    number_gene: "INTEGER: Number of gene. It define the number of gene features to be created."
    size_gene: "INTEGER: Size of genes. It define the size oft the gene features to be created."
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
    gaas_create_random_feature_do_tpl: ""
  }
}