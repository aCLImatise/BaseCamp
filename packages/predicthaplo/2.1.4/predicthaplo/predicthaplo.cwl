class: CommandLineTool
id: predicthaplo.cwl
inputs:
- id: in_sam
  doc: Filename of the aligned reads (sam format).
  type: File?
  inputBinding:
    prefix: --sam
- id: in_reference
  doc: Filename of reference sequence (FASTA).
  type: File?
  inputBinding:
    prefix: --reference
- id: in_prefix
  doc: Prefix of output files.
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_visualization_level
  doc: do_visualize (1 = true, 0 = false).
  type: long?
  inputBinding:
    prefix: --visualization_level
- id: in_have_true_haplotypes
  doc: have_true_haplotypes (1 = true, 0 = false).
  type: long?
  inputBinding:
    prefix: --have_true_haplotypes
- id: in_true_haplotypes
  doc: Filename of the true haplotypes (MSA in FASTA format) (fill in any dummy filename
    if there is no "true" haplotypes).
  type: File?
  inputBinding:
    prefix: --true_haplotypes
- id: in_do_local_analysis
  doc: do_local_analysis (1 = true, 0 = false) (must be 1 in the first run).
  type: long?
  inputBinding:
    prefix: --do_local_Analysis
- id: in_max_gap_fraction
  doc: Relative to alignment length.
  type: double?
  inputBinding:
    prefix: --max_gap_fraction
- id: in_min_align_score_fraction
  doc: Relative to read length.
  type: double?
  inputBinding:
    prefix: --min_align_score_fraction
- id: in_alpha_mn_local
  doc: Prior parameter for multinomial tables over the nucleotides.
  type: double?
  inputBinding:
    prefix: --alpha_MN_local
- id: in_min_overlap_factor
  doc: Reads must have an overlap with the local reconstruction window of at least
    this factor times the window size.
  type: double?
  inputBinding:
    prefix: --min_overlap_factor
- id: in_local_window_size_factor
  doc: Size of  local reconstruction window relative to the median of the read lengths.
  type: double?
  inputBinding:
    prefix: --local_window_size_factor
- id: in_cluster_number
  doc: Max number of clusters (in the truncated Dirichlet process).
  type: long?
  inputBinding:
    prefix: --cluster_number
- id: in_n_sample
  doc: MCMC iterations.
  type: long?
  inputBinding:
    prefix: --nSample
- id: in_include_deletions
  doc: Include deletions (0 = no, 1 = yes).
  type: long?
  inputBinding:
    prefix: --include_deletions
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/predicthaplo:2.1.4--h8f7e1a0_0
cwlVersion: v1.1
baseCommand:
- predicthaplo
