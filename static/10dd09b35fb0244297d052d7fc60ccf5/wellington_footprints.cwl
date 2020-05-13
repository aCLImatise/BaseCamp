class: CommandLineTool
id: wellington_footprints.py.cwl
inputs:
- id: regions
  doc: BED file of the regions you want to footprint
  type: string
  inputBinding:
    position: 0
- id: reads
  doc: The BAM file containing the DNase-seq reads
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: A writeable directory to write the results to
  type: string
  inputBinding:
    position: 2
- id: bonferroni
  doc: 'Performs a bonferroni correction (default: False)'
  type: boolean
  inputBinding:
    prefix: --bonferroni
- id: shoulder_sizes
  doc: 'Range of shoulder sizes to try in format "from,to,step" (default: 35,36,1)'
  type: string
  inputBinding:
    prefix: --shoulder-sizes
- id: footprint_sizes
  doc: 'Range of footprint sizes to try in format "from,to,step" (default: 11,26,2)'
  type: string
  inputBinding:
    prefix: --footprint-sizes
- id: one_dimension
  doc: 'Use Wellington 1D instead of Wellington (default: False)'
  type: boolean
  inputBinding:
    prefix: --one_dimension
- id: fdr_cut_off
  doc: 'Write footprints using the FDR selection method at a specific FDR (default:
    0.01)'
  type: string
  inputBinding:
    prefix: --FDR_cutoff
- id: fdr_iterations
  doc: 'How many randomisations to use when performing FDR calculations (default:
    100)'
  type: string
  inputBinding:
    prefix: --FDR_iterations
- id: fdr_limit
  doc: 'Minimum p-value to be considered significant for FDR calculation (default:
    -20)'
  type: string
  inputBinding:
    prefix: --FDR_limit
- id: pv_cutoffs
  doc: '(Provide multiple values separated by spaces) Select footprints using a range
    of pvalue cutoffs (default: -10 -20 -30 -40 -50 -75 -100 -300 -500 -700'
  type: string[]
  inputBinding:
    prefix: --pv_cutoffs
- id: dont_merge_footprints
  doc: 'Disables merging of overlapping footprints (Default: False)'
  type: boolean
  inputBinding:
    prefix: --dont-merge-footprints
- id: output_prefix
  doc: 'The prefix for results files (default: <reads.regions>)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: p
  doc: 'Number of processes to use, use 0 to use all cores (default: 1)'
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- wellington_footprints.py
