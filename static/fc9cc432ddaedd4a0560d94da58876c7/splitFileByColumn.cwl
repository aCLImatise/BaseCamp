class: CommandLineTool
id: ../../../splitFileByColumn.cwl
inputs:
- id: col
  doc: '- Use the Nth column value (default: N=1, first column)'
  type: string
  inputBinding:
    prefix: -col
- id: head
  doc: '- Put head in front of each output'
  type: File
  inputBinding:
    prefix: -head
- id: tail
  doc: '- Put tail at end of each output'
  type: File
  inputBinding:
    prefix: -tail
- id: chrom_dirs
  doc: '- Split into subdirs of outDir that are distilled from chrom names, e.g. chr3_random
    -> outDir/3/chr3_random.XXX .'
  type: boolean
  inputBinding:
    prefix: -chromDirs
- id: ending
  doc: '- Use XXX as the dot-suffix of split files (default: taken from source).'
  type: string
  inputBinding:
    prefix: -ending
- id: tab
  doc: '- Split by tab characters instead of whitespace.'
  type: boolean
  inputBinding:
    prefix: -tab
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- splitFileByColumn
