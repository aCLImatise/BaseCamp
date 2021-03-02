class: CommandLineTool
id: haystack_hotspots.cwl
inputs:
- id: in_selection
  doc: VARIABLE REGIONS-
  type: string?
  inputBinding:
    prefix: -SELECTION
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
- id: in_chrom_exclude
  doc: "Exclude chromosomes that contain given (regex) string.\nFor example _random|chrX|chrY\
    \ excludes random, X, and\nY chromosome regions"
  type: string?
  inputBinding:
    prefix: --chrom_exclude
- id: in_th_rpm
  doc: "Percentile on the signal intensity to consider for the\nhotspots (default:\
    \ 99)"
  type: long?
  inputBinding:
    prefix: --th_rpm
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
  doc: "z-score value to select the not specific regions\n(default: 0.25)"
  type: double?
  inputBinding:
    prefix: --z_score_low
- id: in_read_ext
  doc: 'Read extension in bps (default: 200)'
  type: long?
  inputBinding:
    prefix: --read_ext
- id: in_max_regions_percentage
  doc: "Upper bound on the % of the regions selected (default:\n0.1, 0.0=0% 1.0=100%)"
  type: long?
  inputBinding:
    prefix: --max_regions_percentage
- id: in_name
  doc: Define a custom output filename for the report
  type: File?
  inputBinding:
    prefix: --name
- id: in_blacklist
  doc: "Exclude blacklisted regions. Blacklisted regions are\nnot excluded by default.\
    \ Use hg19 to blacklist regions\nfor the human genome build 19, otherwise provide\
    \ the\nfilepath for a bed file with blacklisted regions."
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_depleted
  doc: "Look for cell type specific regions with depletion of\nsignal instead of enrichment"
  type: boolean?
  inputBinding:
    prefix: --depleted
- id: in_disable_quantile_normalization
  doc: 'Disable quantile normalization (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_quantile_normalization
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
- id: in_input_is_bigwig
  doc: "Use the bigwig format instead of the bam format for\nthe input. Note: The\
    \ files must have extension .bw"
  type: boolean?
  inputBinding:
    prefix: --input_is_bigwig
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
- id: in_samples_filename_or_bam_folder
  doc: "A tab delimited file with in each row (1) a sample\nname, (2) the path to\
    \ the corresponding bam or bigwig\nfilename. Alternatively it is possible to specify\
    \ a\nfolder containing some .bam files to analyze."
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
- id: out_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_name
  doc: Define a custom output filename for the report
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
hints: []
cwlVersion: v1.1
baseCommand:
- haystack_hotspots
