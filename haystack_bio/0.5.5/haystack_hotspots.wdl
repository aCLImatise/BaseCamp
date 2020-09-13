version 1.0

task HaystackHotspots {
  input {
    String? selection
    Directory? output_directory
    Int? bin_size
    String? chrom_exclude
    Int? th_rpm
    String? transformation
    Float? z_score_high
    Float? z_score_low
    Int? read_ext
    Int? max_regions_percentage
    File? name
    File? blacklist
    Boolean? depleted
    Boolean? disable_quantile_normalization
    Boolean? do_not_recompute
    Boolean? do_not_filter_bams
    Boolean? input_is_bigwig
    Boolean? keep_intermediate_files
    Int? n_processes
    String samples_filename_or_bam_folder
    String genome_name
  }
  command <<<
    haystack_hotspots \
      ~{samples_filename_or_bam_folder} \
      ~{genome_name} \
      ~{if defined(selection) then ("-SELECTION " +  '"' + selection + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(bin_size) then ("--bin_size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(chrom_exclude) then ("--chrom_exclude " +  '"' + chrom_exclude + '"') else ""} \
      ~{if defined(th_rpm) then ("--th_rpm " +  '"' + th_rpm + '"') else ""} \
      ~{if defined(transformation) then ("--transformation " +  '"' + transformation + '"') else ""} \
      ~{if defined(z_score_high) then ("--z_score_high " +  '"' + z_score_high + '"') else ""} \
      ~{if defined(z_score_low) then ("--z_score_low " +  '"' + z_score_low + '"') else ""} \
      ~{if defined(read_ext) then ("--read_ext " +  '"' + read_ext + '"') else ""} \
      ~{if defined(max_regions_percentage) then ("--max_regions_percentage " +  '"' + max_regions_percentage + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if (depleted) then "--depleted" else ""} \
      ~{if (disable_quantile_normalization) then "--disable_quantile_normalization" else ""} \
      ~{if (do_not_recompute) then "--do_not_recompute" else ""} \
      ~{if (do_not_filter_bams) then "--do_not_filter_bams" else ""} \
      ~{if (input_is_bigwig) then "--input_is_bigwig" else ""} \
      ~{if (keep_intermediate_files) then "--keep_intermediate_files" else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""}
  >>>
  parameter_meta {
    selection: "VARIABLE REGIONS-"
    output_directory: "Output directory (default: current directory)"
    bin_size: "bin size to use(default: 500bp)"
    chrom_exclude: "Exclude chromosomes that contain given (regex) string.\\nFor example _random|chrX|chrY excludes random, X, and\\nY chromosome regions"
    th_rpm: "Percentile on the signal intensity to consider for the\\nhotspots (default: 99)"
    transformation: "Variance stabilizing transformation among: none, log2,\\nangle (default: angle)"
    z_score_high: "z-score value to select the specific regions(default:\\n1.5)"
    z_score_low: "z-score value to select the not specific regions\\n(default: 0.25)"
    read_ext: "Read extension in bps (default: 200)"
    max_regions_percentage: "Upper bound on the % of the regions selected (default:\\n0.1, 0.0=0% 1.0=100%)"
    name: "Define a custom output filename for the report"
    blacklist: "Exclude blacklisted regions. Blacklisted regions are\\nnot excluded by default. Use hg19 to blacklist regions\\nfor the human genome build 19, otherwise provide the\\nfilepath for a bed file with blacklisted regions."
    depleted: "Look for cell type specific regions with depletion of\\nsignal instead of enrichment"
    disable_quantile_normalization: "Disable quantile normalization (default: False)"
    do_not_recompute: "Keep any file previously precalculated"
    do_not_filter_bams: "Use BAM files as provided. Do not remove reads that\\nare unmapped, mate unmapped, not primary aligned or\\nlow MAPQ reads, reads failing qc and optical\\nduplicates"
    input_is_bigwig: "Use the bigwig format instead of the bam format for\\nthe input. Note: The files must have extension .bw"
    keep_intermediate_files: "keep intermediate bedgraph files"
    n_processes: "Specify the number of processes to use. The default is\\n#cores available."
    samples_filename_or_bam_folder: "A tab delimited file with in each row (1) a sample\\nname, (2) the path to the corresponding bam or bigwig\\nfilename. Alternatively it is possible to specify a\\nfolder containing some .bam files to analyze."
    genome_name: "Genome assembly to use from UCSC (for example hg19,\\nmm9, etc.)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_name = "${in_name}"
  }
}