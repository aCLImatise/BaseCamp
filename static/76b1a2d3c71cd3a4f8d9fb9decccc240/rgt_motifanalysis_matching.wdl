version 1.0

task RgtmotifanalysisMatching {
  input {
    Directory? organism
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
    rgt_motifanalysis matching \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(fpr) then ("--fpr " +  '"' + fpr + '"') else ""} \
      ~{if defined(pseudo_counts) then ("--pseudocounts " +  '"' + pseudo_counts + '"') else ""} \
      ~{if defined(rand_proportion) then ("--rand-proportion " +  '"' + rand_proportion + '"') else ""} \
      ~{if (norm_threshold) then "--norm-threshold" else ""} \
      ~{if defined(motif_dbs) then ("--motif-dbs " +  '"' + motif_dbs + '"') else ""} \
      ~{if (remove_strand_duplicates) then "--remove-strand-duplicates" else ""} \
      ~{if (rmd_up) then "--rmdup" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(filter_type) then ("--filter-type " +  '"' + filter_type + '"') else ""} \
      ~{if defined(input_matrix) then ("--input-matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if (promoters_only) then "--promoters-only" else ""} \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(target_genes) then ("--target-genes " +  '"' + target_genes + '"') else ""} \
      ~{if (make_background) then "--make-background" else ""} \
      ~{if defined(promoter_length) then ("--promoter-length " +  '"' + promoter_length + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if (big_bed) then "--bigbed" else ""} \
      ~{if (normalize_bit_score) then "--normalize-bitscore" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19\\nor hg38."
    fpr: "False positive rate cutoff."
    pseudo_counts: "Pseudocounts to be added to raw counts of each PFM."
    rand_proportion: "If set, a random regions file will be created (eg, for\\nlater enrichment analysis). The number of coordinates\\nwill be equal to this value times the size of the\\ninputregions. We advise you use a value of at least\\n10."
    norm_threshold: "If this option is used, the thresholds for all PWMs\\nwill be normalized by their length. In this scheme,\\nthe threshold cutoff is evaluated in the regular way\\nby the given fpr. Then, all thresholds are divided by\\nthe length of the motif. The final threshold consists\\nof the average between all normalized motif\\nthresholds. This single threshold will be applied to\\nall motifs."
    motif_dbs: "New 'motif DB' folders to use instead of the ones\\nwithin the RGTDATA folder. Each folder must contain\\nPWM files."
    remove_strand_duplicates: "Certain motifs are 'palindromic', or more specifically\\nthey have a palindromic consensus sequence. When this\\nhappens, the output MPBS file will have duplicates:\\nsame chromosome and initial and final position, but\\nopposing strand. Select this option to only retain the\\n'strand duplicate' with the highest score. Duplicates\\ndue to overlapping input regions are NOT affected by\\nthis."
    rmd_up: "Remove any duplicate region from the input BED files."
    filter: "List of key-value patterns to select a subset of TFs\\nusing the metadata (MTF files), e.g. for Mouse and\\nHuman on Selex data use:\\n\\\"species:sapiens,mus;data_source:selex\\\". NB: the\\nDATABASE values must be written in full - exact\\nmatching is always performed.Valid key types are\\n\\\"name\\\", \\\"gene_names\\\", \\\"family\\\", \\\"uniprot_ids\\\",\\n\\\"data_source\\\", \\\"tax_group\\\", \\\"species\\\", \\\"database\\\",\\n\\\"name_file\\\" and \\\"gene_names_file\\\""
    filter_type: "Only useful together with the --filter argument.Exact\\nwill only match perfect matching of the value for each\\nkey. Inexact will match in case the value pattern is\\ncontained within the motif. Regex allows for a more\\ncomplex pattern use."
    input_matrix: "The experimental matrix allows the specification of\\ngene-association rules among input files (see online\\ndocumentation for details)."
    promoters_only: "If you ONLY want to perform promoter matching without\\nproviding any input file/matrix. If --target-genes is\\nnot provided, then all available promoters will be\\nmatched against. Note how this makes '--make-\\nbackground' redundant."
    input_files: "BED files to perform motif matching on."
    target_genes: "List of genes (one per line) to get the promoter\\nregions from."
    make_background: "If set, it will perform motif matching on the\\n'background regions', composed of the promoters of all\\navailable genes (minus the target genes, if\\nspecified). It doesn't require --target-genes."
    promoter_length: "Length of the promoter region (in bp) to be extracted\\nfrom each gene."
    output_location: "Path where the output MPBS files will be written.\\nDefaults to 'match' in the current directory."
    big_bed: "If this option is used, all bed files will be written\\nas bigbed."
    normalize_bit_score: "In order to print bigbed files the scores need to be\\nnormalized between 0 and 1000. Don't use this option\\nif real bitscores should be printed in the resulting\\nbed file. Without this option, bigbed files will never\\nbe created.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}