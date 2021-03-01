class: CommandLineTool
id: wellington_footprints.py.cwl
inputs:
- id: in_bonferroni
  doc: 'Performs a bonferroni correction (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bonferroni
- id: in_shoulder_sizes
  doc: "Range of shoulder sizes to try in format\n\"from,to,step\" (default: 35,36,1)"
  type: long?
  inputBinding:
    prefix: --shoulder-sizes
- id: in_footprint_sizes
  doc: "Range of footprint sizes to try in format\n\"from,to,step\" (default: 11,26,2)"
  type: long?
  inputBinding:
    prefix: --footprint-sizes
- id: in_one_dimension
  doc: "Use Wellington 1D instead of Wellington (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --one_dimension
- id: in_fdr_cut_off
  doc: "Write footprints using the FDR selection method at a\nspecific FDR (default:\
    \ 0.01)"
  type: double?
  inputBinding:
    prefix: --FDR_cutoff
- id: in_fdr_iterations
  doc: "How many randomisations to use when performing FDR\ncalculations (default:\
    \ 100)"
  type: long?
  inputBinding:
    prefix: --FDR_iterations
- id: in_fdr_limit
  doc: "Minimum p-value to be considered significant for FDR\ncalculation (default:\
    \ -20)"
  type: long?
  inputBinding:
    prefix: --FDR_limit
- id: in_pv_cutoffs
  doc: "(Provide multiple values separated by spaces) Select\nfootprints using a range\
    \ of pvalue cutoffs (default:\n-10 -20 -30 -40 -50 -75 -100 -300 -500 -700"
  type: string[]
  inputBinding:
    prefix: --pv_cutoffs
- id: in_dont_merge_footprints
  doc: "Disables merging of overlapping footprints (Default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --dont-merge-footprints
- id: in_output_prefix
  doc: "The prefix for results files (default:\n<reads.regions>)"
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_number_use_use
  doc: "Number of processes to use, use 0 to use all cores\n(default: 1)"
  type: long?
  inputBinding:
    prefix: -p
- id: in_atacseq_mode_default
  doc: 'ATAC-seq mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_regions
  doc: BED file of the regions you want to footprint
  type: string
  inputBinding:
    position: 0
- id: in_reads
  doc: The BAM file containing the DNase-seq reads
  type: string
  inputBinding:
    position: 1
- id: in_output_dir
  doc: A writeable directory to write the results to
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wellington_footprints.py
