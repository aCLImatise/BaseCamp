class: CommandLineTool
id: splitFileByColumn.cwl
inputs:
- id: in_col
  doc: '- Use the Nth column value (default: N=1, first column)'
  type: long?
  inputBinding:
    prefix: -col
- id: in_head
  doc: '- Put head in front of each output'
  type: File?
  inputBinding:
    prefix: -head
- id: in_tail
  doc: '- Put tail at end of each output'
  type: File?
  inputBinding:
    prefix: -tail
- id: in_chrom_dirs
  doc: "- Split into subdirs of outDir that are distilled from chrom\nnames, e.g.\
    \ chr3_random -> outDir/3/chr3_random.XXX ."
  type: boolean?
  inputBinding:
    prefix: -chromDirs
- id: in_ending
  doc: "- Use XXX as the dot-suffix of split files (default: taken\nfrom source)."
  type: string?
  inputBinding:
    prefix: -ending
- id: in_tab
  doc: '- Split by tab characters instead of whitespace.'
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- splitFileByColumn
