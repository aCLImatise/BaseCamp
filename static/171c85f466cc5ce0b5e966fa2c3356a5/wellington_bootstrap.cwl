class: CommandLineTool
id: wellington_bootstrap.py.cwl
inputs:
- id: treatment_bam
  doc: BAM file for treatment
  type: string
  inputBinding:
    position: 0
- id: control_bam
  doc: BAM file for control
  type: string
  inputBinding:
    position: 1
- id: bed_sites
  doc: BED file of genomic locations to search in
  type: string
  inputBinding:
    position: 2
- id: treatment_only_output
  doc: File to write treatment specific fooprints scores to
  type: string
  inputBinding:
    position: 3
- id: control_only_output
  doc: File to write control specific footprint scores to
  type: string
  inputBinding:
    position: 4
- id: footprint_sizes
  doc: 'Range of footprint sizes to try in format "from,to,step" (default: 11,26,2)'
  type: string
  inputBinding:
    prefix: --footprint-sizes
- id: fdr_cut_off
  doc: 'Detect footprints using the FDR selection method at a specific FDR (default:
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
- id: processes
  doc: 'Number of processes to use (default: uses all CPUs)'
  type: string
  inputBinding:
    prefix: --processes
- id: a
  doc: 'ATAC-seq mode (default: False)'
  type: boolean
  inputBinding:
    prefix: -A
outputs: []
cwlVersion: v1.1
baseCommand:
- wellington_bootstrap.py
