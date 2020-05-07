class: CommandLineTool
id: sga_preqc.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: threads
  doc: 'use NUM threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: simple
  doc: only compute the metrics that do not need the FM-index
  type: boolean
  inputBinding:
    prefix: --simple
- id: max_contig_length
  doc: 'stop contig extension at N bp (default: 50000)'
  type: string
  inputBinding:
    prefix: --max-contig-length
- id: reference
  doc: use the reference FILE to calculate GC plot
  type: File
  inputBinding:
    prefix: --reference
- id: diploid_reference_mode
  doc: generate metrics assuming that the input data is a reference genome, not a
    collection of reads
  type: boolean
  inputBinding:
    prefix: --diploid-reference-mode
- id: force_em
  doc: force preqc to proceed even if the coverage model does not converge. This allows
    the rest of the program to continue but the branch and genome size estimates may
    be misleading
  type: boolean
  inputBinding:
    prefix: --force-EM
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- preqc
