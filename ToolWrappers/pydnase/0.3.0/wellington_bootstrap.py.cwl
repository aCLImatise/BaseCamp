class: CommandLineTool
id: wellington_bootstrap.py.cwl
inputs:
- id: in_footprint_sizes
  doc: "Range of footprint sizes to try in format\n\"from,to,step\" (default: 11,26,2)"
  type: long?
  inputBinding:
    prefix: --footprint-sizes
- id: in_fdr_cut_off
  doc: "Detect footprints using the FDR selection method at a\nspecific FDR (default:\
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
- id: in_processes
  doc: 'Number of processes to use (default: uses all CPUs)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_atacseq_mode_default
  doc: 'ATAC-seq mode (default: False)'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_treatment_bam
  doc: BAM file for treatment
  type: string
  inputBinding:
    position: 0
- id: in_control_bam
  doc: BAM file for control
  type: string
  inputBinding:
    position: 1
- id: in_bed_sites
  doc: BED file of genomic locations to search in
  type: string
  inputBinding:
    position: 2
- id: in_treatment_only_output
  doc: File to write treatment specific fooprints scores to
  type: string
  inputBinding:
    position: 3
- id: in_control_only_output
  doc: File to write control specific footprint scores to
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wellington_bootstrap.py
