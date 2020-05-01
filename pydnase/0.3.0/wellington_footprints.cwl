#!/usr/bin/env cwl-runner

baseCommand:
- wellington_footprints.py
class: CommandLineTool
cwlVersion: v1.0
id: wellington_footprints.py
inputs:
- doc: BED file of the regions you want to footprint
  id: regions
  inputBinding:
    position: 0
  type: string
- doc: The BAM file containing the DNase-seq reads
  id: reads
  inputBinding:
    position: 1
  type: string
- doc: A writeable directory to write the results to
  id: output_dir
  inputBinding:
    position: 2
  type: string
- doc: 'Performs a bonferroni correction (default: False)'
  id: bonferroni
  inputBinding:
    prefix: --bonferroni
  type: boolean
- doc: 'Range of shoulder sizes to try in format "from,to,step" (default: 35,36,1)'
  id: shoulder_sizes
  inputBinding:
    prefix: --shoulder-sizes
  type: string
- doc: 'Range of footprint sizes to try in format "from,to,step" (default: 11,26,2)'
  id: footprint_sizes
  inputBinding:
    prefix: --footprint-sizes
  type: string
- doc: 'Use Wellington 1D instead of Wellington (default: False)'
  id: one_dimension
  inputBinding:
    prefix: --one_dimension
  type: boolean
- doc: 'Write footprints using the FDR selection method at a specific FDR (default:
    0.01)'
  id: fdr_cut_off
  inputBinding:
    prefix: --FDR_cutoff
  type: string
- doc: 'How many randomisations to use when performing FDR calculations (default:
    100)'
  id: fdr_iterations
  inputBinding:
    prefix: --FDR_iterations
  type: string
- doc: 'Minimum p-value to be considered significant for FDR calculation (default:
    -20)'
  id: fdr_limit
  inputBinding:
    prefix: --FDR_limit
  type: string
- doc: '(Provide multiple values separated by spaces) Select footprints using a range
    of pvalue cutoffs (default: -10 -20 -30 -40 -50 -75 -100 -300 -500 -700'
  id: pv_cutoffs
  inputBinding:
    prefix: --pv_cutoffs
  type:
    items: string
    type: array
- doc: 'Disables merging of overlapping footprints (Default: False)'
  id: dont_merge_footprints
  inputBinding:
    prefix: --dont-merge-footprints
  type: boolean
- doc: 'The prefix for results files (default: <reads.regions>)'
  id: output_prefix
  inputBinding:
    prefix: --output_prefix
  type: string
- doc: 'Number of processes to use, use 0 to use all cores (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'ATAC-seq mode (default: False)'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
