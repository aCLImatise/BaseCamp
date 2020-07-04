class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/catalogue_errors.cwl
inputs:
- id: bed
  doc: '.bed file of reference regions to include. (default: None)'
  type: string
  inputBinding:
    prefix: --bed
- id: threads
  doc: 'Number of threads for parallel execution. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: outdir
  doc: 'Output directory. (default: error_catalogue)'
  type: string
  inputBinding:
    prefix: --outdir
- id: bam
  doc: Input alignments (aligned to ref).
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- catalogue_errors
