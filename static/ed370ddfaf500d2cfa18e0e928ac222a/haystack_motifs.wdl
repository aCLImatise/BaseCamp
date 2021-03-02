version 1.0

task HaystackMotifs {
  input {
    String? motif
    File? bed_bg_filename
    File? meme_motifs_filename
    File? nucleotide_bg_filename
    Float? p_value
    Boolean? no_c_g_correction
    Boolean? mask_repetitive
    Int? n_target_coordinates
    Boolean? use_entire_bg
    Int? bed_score_column
    Int? bg_target_ratio
    Boolean? bootstrap
    Directory? temp_directory
    Boolean? no_random_sampling_target
    File? name
    Int? internal_window_length
    Int? window_length
    Int? min_central_enrichment
    Boolean? disable_ratio
    Boolean? dump
    Directory? output_directory
    Int? smooth_size
    File? gene_annotations_filename
    File? gene_ids_to_names_filename
    Int? n_processes
    String bed_target_filename
    String genome_name
    String background
  }
  command <<<
    haystack_motifs \
      ~{bed_target_filename} \
      ~{genome_name} \
      ~{background} \
      ~{if defined(motif) then ("-MOTIF " +  '"' + motif + '"') else ""} \
      ~{if defined(bed_bg_filename) then ("--bed_bg_filename " +  '"' + bed_bg_filename + '"') else ""} \
      ~{if defined(meme_motifs_filename) then ("--meme_motifs_filename " +  '"' + meme_motifs_filename + '"') else ""} \
      ~{if defined(nucleotide_bg_filename) then ("--nucleotide_bg_filename " +  '"' + nucleotide_bg_filename + '"') else ""} \
      ~{if defined(p_value) then ("--p_value " +  '"' + p_value + '"') else ""} \
      ~{if (no_c_g_correction) then "--no_c_g_correction" else ""} \
      ~{if (mask_repetitive) then "--mask_repetitive" else ""} \
      ~{if defined(n_target_coordinates) then ("--n_target_coordinates " +  '"' + n_target_coordinates + '"') else ""} \
      ~{if (use_entire_bg) then "--use_entire_bg" else ""} \
      ~{if defined(bed_score_column) then ("--bed_score_column " +  '"' + bed_score_column + '"') else ""} \
      ~{if defined(bg_target_ratio) then ("--bg_target_ratio " +  '"' + bg_target_ratio + '"') else ""} \
      ~{if (bootstrap) then "--bootstrap" else ""} \
      ~{if defined(temp_directory) then ("--temp_directory " +  '"' + temp_directory + '"') else ""} \
      ~{if (no_random_sampling_target) then "--no_random_sampling_target" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(internal_window_length) then ("--internal_window_length " +  '"' + internal_window_length + '"') else ""} \
      ~{if defined(window_length) then ("--window_length " +  '"' + window_length + '"') else ""} \
      ~{if defined(min_central_enrichment) then ("--min_central_enrichment " +  '"' + min_central_enrichment + '"') else ""} \
      ~{if (disable_ratio) then "--disable_ratio" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(smooth_size) then ("--smooth_size " +  '"' + smooth_size + '"') else ""} \
      ~{if defined(gene_annotations_filename) then ("--gene_annotations_filename " +  '"' + gene_annotations_filename + '"') else ""} \
      ~{if defined(gene_ids_to_names_filename) then ("--gene_ids_to_names_filename " +  '"' + gene_ids_to_names_filename + '"') else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    motif: "ANALYSIS- [Luca Pinello - lpinello@jimmy.harvard.edu]"
    bed_bg_filename: "A bed file containing the backround coordinates on the\\ngenome of reference (default random sampled regions\\nfrom the genome)"
    meme_motifs_filename: "Motifs database in MEME format (default JASPAR CORE\\n2016)"
    nucleotide_bg_filename: "Nucleotide probability for the background in MEME\\nformat (default precomupted on the Genome)"
    p_value: "FIMO p-value for calling a motif hit significant\\n(deafult: 1e-4)"
    no_c_g_correction: "Disable the matching of the C+G density of the"
    mask_repetitive: "Mask repetitive sequences"
    n_target_coordinates: "Number of target coordinates to use (default: all)"
    use_entire_bg: "Use the entire background file (use only when the cg\\ncorrection is disabled)"
    bed_score_column: "Column in the bedfile that represents the score\\n(default: 5)"
    bg_target_ratio: "Background size/Target size ratio (default: 1.0)"
    bootstrap: "Enable the bootstrap if the target set or the\\nbackground set are too small, choices: True, False\\n(default: False)"
    temp_directory: "Directory to store temporary files (default: /tmp)"
    no_random_sampling_target: "Select the best --n_target_coordinates using the score\\ncolumn from the target file instead of randomly select\\nthem"
    name: "Define a custom output filename for the report"
    internal_window_length: "Window length in bp for the enrichment (default:\\naverage lenght of the target sequences)"
    window_length: "Window length in bp for the profiler\\n(default:internal_window_length*5)"
    min_central_enrichment: "Minimum central enrichment to report a motif\\n(default:>1.0)"
    disable_ratio: "Disable target/bg ratio filter"
    dump: "Dump all the intermediate data, choices: True, False\\n(default: False)"
    output_directory: "Output directory (default: current directory)"
    smooth_size: "Size in bp for the smoothing window (default:\\ninternal_window_length/4)"
    gene_annotations_filename: "Optional gene annotations file from the UCSC Genome\\nBrowser in bed format to map each region to its closes\\ngene"
    gene_ids_to_names_filename: "Optional mapping file between gene ids to gene names\\n(relevant only if --gene_annotation_filename is used)"
    n_processes: "Specify the number of processes to use. The default is\\n#cores available."
    bed_target_filename: "A bed file containing the target coordinates on the\\ngenome of reference"
    genome_name: "Genome assembly to use from UCSC (for example hg19,\\nmm9, etc.)"
    background: "--c_g_bins C_G_BINS   Number of bins for the C+G density correction"
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
    Directory out_output_directory = "${in_output_directory}"
  }
}