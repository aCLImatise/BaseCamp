class: CommandLineTool
id: CIRCexplorer2_assemble.cwl
inputs:
- id: in_ref
  doc: Gene annotation file.
  type: File
  inputBinding:
    prefix: --ref
- id: in_top_hat
  doc: TopHat mapping folder.
  type: Directory
  inputBinding:
    prefix: --tophat
- id: in_output
  doc: 'Output directory. [default: assemble]'
  type: Directory
  inputBinding:
    prefix: --output
- id: in_thread
  doc: 'Running threads. [default: 10]'
  type: long
  inputBinding:
    prefix: --thread
- id: in_bb
  doc: Convert assembly results to BigBed.
  type: boolean
  inputBinding:
    prefix: --bb
- id: in_chrom_size
  doc: Chrom size file for converting to BigBed.
  type: long
  inputBinding:
    prefix: --chrom-size
- id: in_remove_rrna
  doc: Ignore rRNA during assembling (only for human hg19).
  type: boolean
  inputBinding:
    prefix: --remove-rRNA
- id: in_max_bundle_frags
  doc: Cufflinks --max-bundle-frags option.
  type: long
  inputBinding:
    prefix: --max-bundle-frags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output directory. [default: assemble]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- assemble
