class: CommandLineTool
id: haystack_pipeline.cwl
inputs:
- id: in_selection
  doc: HOTSPOTS OF VARIABILITY AND ENRICHED MOTIFS-
  type: string?
  inputBinding:
    prefix: -SELECTION
- id: in_name
  doc: Define a custom output filename for the report
  type: File?
  inputBinding:
    prefix: --name
- id: in_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_bin_size
  doc: 'bin size to use(default: 500bp)'
  type: long?
  inputBinding:
    prefix: --bin_size
- id: in_do_not_recompute
  doc: Keep any file previously precalculated
  type: boolean?
  inputBinding:
    prefix: --do_not_recompute
- id: in_do_not_filter_bams
  doc: "Use BAM files as provided. Do not remove reads that\nare unmapped, mate unmapped,\
    \ not primary aligned or\nlow MAPQ reads, reads failing qc and optical\nduplicates"
  type: boolean?
  inputBinding:
    prefix: --do_not_filter_bams
- id: in_depleted
  doc: "Look for cell type specific regions with depletion of\nsignal instead of enrichment"
  type: boolean?
  inputBinding:
    prefix: --depleted
- id: in_input_is_bigwig
  doc: "Use the bigwig format instead of the bam format for\nthe input. Note: The\
    \ files must have extension .bw"
  type: boolean?
  inputBinding:
    prefix: --input_is_bigwig
- id: in_disable_quantile_normalization
  doc: 'Disable quantile normalization (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_quantile_normalization
- id: in_transformation
  doc: "Variance stabilizing transformation among: none, log2,\nangle (default: angle)"
  type: string?
  inputBinding:
    prefix: --transformation
- id: in_z_score_high
  doc: "z-score value to select the specific regions(default:\n1.5)"
  type: double?
  inputBinding:
    prefix: --z_score_high
- id: in_z_score_low
  doc: "z-score value to select the not specific\nregions(default: 0.25)"
  type: double?
  inputBinding:
    prefix: --z_score_low
- id: in_th_rpm
  doc: "Percentile on the signal intensity to consider for the\nhotspots (default:\
    \ 99)"
  type: long?
  inputBinding:
    prefix: --th_rpm
- id: in_meme_motifs_filename
  doc: "Motifs database in MEME format (default JASPAR CORE\n2016)"
  type: File?
  inputBinding:
    prefix: --meme_motifs_filename
- id: in_motif_mapping_filename
  doc: "Custom motif to gene mapping file (the default is for\nJASPAR CORE 2016 database)"
  type: File?
  inputBinding:
    prefix: --motif_mapping_filename
- id: in_plot_all
  doc: "Disable the filter on the TF activity and correlation\n(default z-score TF>0\
    \ and rho>0.3)"
  type: boolean?
  inputBinding:
    prefix: --plot_all
- id: in_keep_intermediate_files
  doc: keep intermediate bedgraph files
  type: boolean?
  inputBinding:
    prefix: --keep_intermediate_files
- id: in_n_processes
  doc: "Specify the number of processes to use. The default is\n#cores available."
  type: long?
  inputBinding:
    prefix: --n_processes
- id: in_blacklist
  doc: "Exclude blacklisted regions. Blacklisted regions are\nnot excluded by default.\
    \ Use hg19 to blacklist regions\nfor the human genome 19, otherwise provide the\n\
    filepath for a bed file with blacklisted regions."
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_chrom_exclude
  doc: "Exclude chromosomes that contain given (regex) string.\nFor example _random|chrX|chrY\
    \ excludes random, X, and\nY chromosome regions"
  type: string?
  inputBinding:
    prefix: --chrom_exclude
- id: in_read_ext
  doc: 'Read extension in bps (default: 200)'
  type: long?
  inputBinding:
    prefix: --read_ext
- id: in_temp_directory
  doc: 'Directory to store temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --temp_directory
- id: in_rho_cut_off
  doc: "The cutoff absolute correlation value (0.0 to 1) for\nwhich activity plots\
    \ are generated (default: 0.3)"
  type: double?
  inputBinding:
    prefix: --rho_cutoff
- id: in_tf_value_cut_to_ff
  doc: "The cutoff z-score tf_value for which activity plots\nare generated (default:\
    \ 0.0)"
  type: double?
  inputBinding:
    prefix: --tf_value_cuttoff
- id: in_samples_filename_or_bam_folder
  doc: "A tab delimeted file with in each row (1) a sample\nname, (2) the path to\
    \ the corresponding bam filename,\n(3 optional) the path to the corresponding\
    \ gene\nexpression filename."
  type: string
  inputBinding:
    position: 0
- id: in_genome_name
  doc: "Genome assembly to use from UCSC (for example hg19,\nmm9, etc.)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: Define a custom output filename for the report
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
- id: out_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- haystack_pipeline
