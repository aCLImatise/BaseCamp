class: CommandLineTool
id: snp_pileup.cwl
inputs:
- id: in_count_orphans
  doc: Do not discard anomalous read pairs.
  type: boolean?
  inputBinding:
    prefix: --count-orphans
- id: in_max_depth
  doc: Sets the maximum depth. Default is 4000.
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_gzip
  doc: Compresses the output file with BGZF.
  type: File?
  inputBinding:
    prefix: --gzip
- id: in_progress
  doc: "Show a progress bar. WARNING: requires additional\ntime to calculate number\
    \ of SNPs, and will take\nlonger than normal."
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_pseudo_snps
  doc: "Every MULTIPLE positions, if there is no SNP,\ninsert a blank record with\
    \ the total count at the\nposition."
  type: string?
  inputBinding:
    prefix: --pseudo-snps
- id: in_min_map_quality
  doc: "Sets the minimum threshold for mapping\nquality. Default is 0."
  type: long?
  inputBinding:
    prefix: --min-map-quality
- id: in_min_base_quality
  doc: "Sets the minimum threshold for base quality.\nDefault is 0."
  type: long?
  inputBinding:
    prefix: --min-base-quality
- id: in_min_read_counts
  doc: "Comma separated list of minimum read counts for\na position to be output.\
    \ Default is 0."
  type: long?
  inputBinding:
    prefix: --min-read-counts
- id: in_verbose
  doc: Show detailed messages.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ignore_overlaps
  doc: Disable read-pair overlap detection.
  type: boolean?
  inputBinding:
    prefix: --ignore-overlaps
- id: in_option_dot_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_sequence_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_gzip
  doc: Compresses the output file with BGZF.
  type: File?
  outputBinding:
    glob: $(inputs.in_gzip)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snp-pileup:0.6.1--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- snp-pileup
