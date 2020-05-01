#!/usr/bin/env cwl-runner

baseCommand:
- wellington_bootstrap.py
class: CommandLineTool
cwlVersion: v1.0
id: wellington_bootstrap.py
inputs:
- doc: BAM file for treatment
  id: treatment_bam
  inputBinding:
    position: 0
  type: string
- doc: BAM file for control
  id: control_bam
  inputBinding:
    position: 1
  type: string
- doc: BED file of genomic locations to search in
  id: bed_sites
  inputBinding:
    position: 2
  type: string
- doc: File to write treatment specific fooprints scores to
  id: treatment_only_output
  inputBinding:
    position: 3
  type: string
- doc: File to write control specific footprint scores to
  id: control_only_output
  inputBinding:
    position: 4
  type: string
- doc: 'Range of footprint sizes to try in format "from,to,step" (default: 11,26,2)'
  id: footprint_sizes
  inputBinding:
    prefix: --footprint-sizes
  type: string
- doc: 'Detect footprints using the FDR selection method at a specific FDR (default:
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
- doc: 'Number of processes to use (default: uses all CPUs)'
  id: processes
  inputBinding:
    prefix: --processes
  type: string
- doc: 'ATAC-seq mode (default: False)'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
