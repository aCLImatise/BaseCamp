class: CommandLineTool
id: CIRCexplorer2_assemble.cwl
inputs:
- id: ref
  doc: Gene annotation file.
  type: string
  inputBinding:
    prefix: --ref
- id: top_hat
  doc: TopHat mapping folder.
  type: string
  inputBinding:
    prefix: --tophat
- id: output
  doc: 'Output directory. [default: assemble]'
  type: string
  inputBinding:
    prefix: --output
- id: thread
  doc: 'Running threads. [default: 10]'
  type: string
  inputBinding:
    prefix: --thread
- id: bb
  doc: Convert assembly results to BigBed.
  type: boolean
  inputBinding:
    prefix: --bb
- id: chrom_size
  doc: Chrom size file for converting to BigBed.
  type: string
  inputBinding:
    prefix: --chrom-size
- id: remove_rrna
  doc: Ignore rRNA during assembling (only for human hg19).
  type: boolean
  inputBinding:
    prefix: --remove-rRNA
- id: max_bundle_frags
  doc: Cufflinks --max-bundle-frags option.
  type: string
  inputBinding:
    prefix: --max-bundle-frags
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- assemble
