version 1.0

task HaystackPipeline {
  input {
    String? selection
    File? name
    Directory? output_directory
    Int? bin_size
    Boolean? do_not_recompute
    Boolean? do_not_filter_bams
    Boolean? depleted
    Boolean? input_is_bigwig
    Boolean? disable_quantile_normalization
    String? transformation
    Float? z_score_high
    Float? z_score_low
    Int? th_rpm
    File? meme_motifs_filename
    File? motif_mapping_filename
    Boolean? plot_all
    Boolean? keep_intermediate_files
    Int? n_processes
    File? blacklist
    String? chrom_exclude
    Int? read_ext
    Directory? temp_directory
    Float? rho_cut_off
    Float? tf_value_cut_to_ff
    String samples_filename_or_bam_folder
    String genome_name
  }
  command <<<
    haystack_pipeline \
      ~{samples_filename_or_bam_folder} \
      ~{genome_name} \
      ~{if defined(selection) then ("-SELECTION " +  '"' + selection + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(bin_size) then ("--bin_size " +  '"' + bin_size + '"') else ""} \
      ~{if (do_not_recompute) then "--do_not_recompute" else ""} \
      ~{if (do_not_filter_bams) then "--do_not_filter_bams" else ""} \
      ~{if (depleted) then "--depleted" else ""} \
      ~{if (input_is_bigwig) then "--input_is_bigwig" else ""} \
      ~{if (disable_quantile_normalization) then "--disable_quantile_normalization" else ""} \
      ~{if defined(transformation) then ("--transformation " +  '"' + transformation + '"') else ""} \
      ~{if defined(z_score_high) then ("--z_score_high " +  '"' + z_score_high + '"') else ""} \
      ~{if defined(z_score_low) then ("--z_score_low " +  '"' + z_score_low + '"') else ""} \
      ~{if defined(th_rpm) then ("--th_rpm " +  '"' + th_rpm + '"') else ""} \
      ~{if defined(meme_motifs_filename) then ("--meme_motifs_filename " +  '"' + meme_motifs_filename + '"') else ""} \
      ~{if defined(motif_mapping_filename) then ("--motif_mapping_filename " +  '"' + motif_mapping_filename + '"') else ""} \
      ~{if (plot_all) then "--plot_all" else ""} \
      ~{if (keep_intermediate_files) then "--keep_intermediate_files" else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(chrom_exclude) then ("--chrom_exclude " +  '"' + chrom_exclude + '"') else ""} \
      ~{if defined(read_ext) then ("--read_ext " +  '"' + read_ext + '"') else ""} \
      ~{if defined(temp_directory) then ("--temp_directory " +  '"' + temp_directory + '"') else ""} \
      ~{if defined(rho_cut_off) then ("--rho_cutoff " +  '"' + rho_cut_off + '"') else ""} \
      ~{if defined(tf_value_cut_to_ff) then ("--tf_value_cuttoff " +  '"' + tf_value_cut_to_ff + '"') else ""}
  >>>
  parameter_meta {
    selection: "HOTSPOTS OF VARIABILITY AND ENRICHED MOTIFS-"
    name: "Define a custom output filename for the report"
    output_directory: "Output directory (default: current directory)"
    bin_size: "bin size to use(default: 500bp)"
    do_not_recompute: "Keep any file previously precalculated"
    do_not_filter_bams: "Use BAM files as provided. Do not remove reads that\\nare unmapped, mate unmapped, not primary aligned or\\nlow MAPQ reads, reads failing qc and optical\\nduplicates"
    depleted: "Look for cell type specific regions with depletion of\\nsignal instead of enrichment"
    input_is_bigwig: "Use the bigwig format instead of the bam format for\\nthe input. Note: The files must have extension .bw"
    disable_quantile_normalization: "Disable quantile normalization (default: False)"
    transformation: "Variance stabilizing transformation among: none, log2,\\nangle (default: angle)"
    z_score_high: "z-score value to select the specific regions(default:\\n1.5)"
    z_score_low: "z-score value to select the not specific\\nregions(default: 0.25)"
    th_rpm: "Percentile on the signal intensity to consider for the\\nhotspots (default: 99)"
    meme_motifs_filename: "Motifs database in MEME format (default JASPAR CORE\\n2016)"
    motif_mapping_filename: "Custom motif to gene mapping file (the default is for\\nJASPAR CORE 2016 database)"
    plot_all: "Disable the filter on the TF activity and correlation\\n(default z-score TF>0 and rho>0.3)"
    keep_intermediate_files: "keep intermediate bedgraph files"
    n_processes: "Specify the number of processes to use. The default is\\n#cores available."
    blacklist: "Exclude blacklisted regions. Blacklisted regions are\\nnot excluded by default. Use hg19 to blacklist regions\\nfor the human genome 19, otherwise provide the\\nfilepath for a bed file with blacklisted regions."
    chrom_exclude: "Exclude chromosomes that contain given (regex) string.\\nFor example _random|chrX|chrY excludes random, X, and\\nY chromosome regions"
    read_ext: "Read extension in bps (default: 200)"
    temp_directory: "Directory to store temporary files (default: /tmp)"
    rho_cut_off: "The cutoff absolute correlation value (0.0 to 1) for\\nwhich activity plots are generated (default: 0.3)"
    tf_value_cut_to_ff: "The cutoff z-score tf_value for which activity plots\\nare generated (default: 0.0)"
    samples_filename_or_bam_folder: "A tab delimeted file with in each row (1) a sample\\nname, (2) the path to the corresponding bam filename,\\n(3 optional) the path to the corresponding gene\\nexpression filename."
    genome_name: "Genome assembly to use from UCSC (for example hg19,\\nmm9, etc.)"
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
    Directory out_output_directory = "${in_output_directory}"
  }
}