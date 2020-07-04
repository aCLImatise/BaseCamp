version 1.0

task RgtMotifanalysisMatching {
  input {
    String? organism
    Float? fpr
    Float? pseudo_counts
    Float? rand_proportion
    Boolean? norm_threshold
    Array[File] motif_dbs
    Boolean? remove_strand_duplicates
    Boolean? rmd_up
    String? filter
    String? filter_type
    String? input_matrix
    Boolean? promoters_only
    Array[String] input_files
    File? target_genes
    Boolean? make_background
    Int? promoter_length
    File? output_location
    Boolean? big_bed
    Boolean? normalize_bit_score
  }
  command <<<
    rgt-motifanalysis matching \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(fpr) then ("--fpr " +  '"' + fpr + '"') else ""} \
      ~{if defined(pseudo_counts) then ("--pseudocounts " +  '"' + pseudo_counts + '"') else ""} \
      ~{if defined(rand_proportion) then ("--rand-proportion " +  '"' + rand_proportion + '"') else ""} \
      ~{true="--norm-threshold" false="" norm_threshold} \
      ~{if defined(motif_dbs) then ("--motif-dbs " +  '"' + motif_dbs + '"') else ""} \
      ~{true="--remove-strand-duplicates" false="" remove_strand_duplicates} \
      ~{true="--rmdup" false="" rmd_up} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(filter_type) then ("--filter-type " +  '"' + filter_type + '"') else ""} \
      ~{if defined(input_matrix) then ("--input-matrix " +  '"' + input_matrix + '"') else ""} \
      ~{true="--promoters-only" false="" promoters_only} \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(target_genes) then ("--target-genes " +  '"' + target_genes + '"') else ""} \
      ~{true="--make-background" false="" make_background} \
      ~{if defined(promoter_length) then ("--promoter-length " +  '"' + promoter_length + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{true="--bigbed" false="" big_bed} \
      ~{true="--normalize-bitscore" false="" normalize_bit_score}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been setup in the RGTDATA folder. Common choices are hg19 or hg38."
    fpr: "False positive rate cutoff."
    pseudo_counts: "Pseudocounts to be added to raw counts of each PFM."
    rand_proportion: "If set, a random regions file will be created (eg, for later enrichment analysis). The number of coordinates will be equal to this value times the size of the inputregions. We advise you use a value of at least 10."
    norm_threshold: "If this option is used, the thresholds for all PWMs will be normalized by their length. In this scheme, the threshold cutoff is evaluated in the regular way by the given fpr. Then, all thresholds are divided by the length of the motif. The final threshold consists of the average between all normalized motif thresholds. This single threshold will be applied to all motifs."
    motif_dbs: "New 'motif DB' folders to use instead of the ones within the RGTDATA folder. Each folder must contain PWM files."
    remove_strand_duplicates: "Certain motifs are 'palindromic', or more specifically they have a palindromic consensus sequence. When this happens, the output MPBS file will have duplicates: same chromosome and initial and final position, but opposing strand. Select this option to only retain the 'strand duplicate' with the highest score. Duplicates due to overlapping input regions are NOT affected by this."
    rmd_up: "Remove any duplicate region from the input BED files."
    filter: "List of key-value patterns to select a subset of TFs using the metadata (MTF files), e.g. for Mouse and Human on Selex data use: \"species:sapiens,mus;data_source:selex\". NB: the DATABASE values must be written in full - exact matching is always performed.Valid key types are \"name\", \"gene_names\", \"family\", \"uniprot_ids\", \"data_source\", \"tax_group\", \"species\", \"database\", \"name_file\" and \"gene_names_file\""
    filter_type: "Only useful together with the --filter argument.Exact will only match perfect matching of the value for each key. Inexact will match in case the value pattern is contained within the motif. Regex allows for a more complex pattern use."
    input_matrix: "The experimental matrix allows the specification of gene-association rules among input files (see online documentation for details)."
    promoters_only: "If you ONLY want to perform promoter matching without providing any input file/matrix. If --target-genes is not provided, then all available promoters will be matched against. Note how this makes '--make- background' redundant."
    input_files: "BED files to perform motif matching on."
    target_genes: "List of genes (one per line) to get the promoter regions from."
    make_background: "If set, it will perform motif matching on the 'background regions', composed of the promoters of all available genes (minus the target genes, if specified). It doesn't require --target-genes."
    promoter_length: "Length of the promoter region (in bp) to be extracted from each gene."
    output_location: "Path where the output MPBS files will be written. Defaults to 'match' in the current directory."
    big_bed: "If this option is used, all bed files will be written as bigbed."
    normalize_bit_score: "In order to print bigbed files the scores need to be normalized between 0 and 1000. Don't use this option if real bitscores should be printed in the resulting bed file. Without this option, bigbed files will never be created."
  }
}