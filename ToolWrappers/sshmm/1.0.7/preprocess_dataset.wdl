version 1.0

task PreprocessDataset {
  input {
    Boolean? disable_filtering
    Boolean? disable_rna_shapes
    Boolean? disable_rna_structure
    Boolean? generate_negative
    Int? min_score
    Int? min_length
    Int? max_length
    Int? elongation
    String? genome_genes
    Boolean? skip_check
    String working_dir
    String dataset_name
    String input_file_bed
    String genome
    String genome_sizes
  }
  command <<<
    preprocess_dataset \
      ~{working_dir} \
      ~{dataset_name} \
      ~{input_file_bed} \
      ~{genome} \
      ~{genome_sizes} \
      ~{if (disable_filtering) then "--disable_filtering" else ""} \
      ~{if (disable_rna_shapes) then "--disable_RNAshapes" else ""} \
      ~{if (disable_rna_structure) then "--disable_RNAstructure" else ""} \
      ~{if (generate_negative) then "--generate_negative" else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(elongation) then ("--elongation " +  '"' + elongation + '"') else ""} \
      ~{if defined(genome_genes) then ("--genome_genes " +  '"' + genome_genes + '"') else ""} \
      ~{if (skip_check) then "--skip_check" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    disable_filtering: "skip the filtering step"
    disable_rna_shapes: "skip secondary structure prediction with RNAshapes"
    disable_rna_structure: "skip secondary structure prediction with RNAstructures"
    generate_negative: "generate a negative set for classification"
    min_score: "filtering: minimum score for binding site (default:\\n0.0)"
    min_length: "filtering: minimum binding site length (default: 8)"
    max_length: "filtering: maximum binding site length (default: 75)"
    elongation: "elongation: span for up- and downstream elongation of\\nbinding sites (default: 20)"
    genome_genes: "negative set generation: gene boundaries"
    skip_check: "skip check for installed prerequisites"
    working_dir: "working/output directory"
    dataset_name: "dataset name"
    input_file_bed: "input file in .bed format"
    genome: "reference genome in FASTA format"
    genome_sizes: "chromosome sizes of reference genome (e.g. from http:/\\n/hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.\\nchrom.sizes)"
  }
  output {
    File out_stdout = stdout()
  }
}