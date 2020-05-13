class: CommandLineTool
id: lrzuntar.cwl
inputs:
- id: d
  doc: ': <path1> will decompress a <path1> lrzip tarball to current directory.'
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: ': <path2> will decompress a -d specified lrzip tarball to <path2> path.'
  type: boolean
  inputBinding:
    prefix: -O
- id: f
  doc: ': will force overwrites.'
  type: boolean
  inputBinding:
    prefix: -f
- id: the
  doc: argument is always last, all options and their arguments precede.
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: 'is an option flag, goes before: (-O <somedir> <input arg>).'
  type: string
  inputBinding:
    prefix: '- The'
- id: you
  doc: use the remaining options of lrzip as they were.
  type: string
  inputBinding:
    prefix: '- You'
- id: lrz_untar
  doc: equivalent to lrztar [options] -d <filename>.
  type: string
  inputBinding:
    prefix: '- lrzuntar'
- id: this
  doc: exists because of how lrzip behaves.
  type: string
  inputBinding:
    prefix: '- This'
- id: beware
  doc: ', it stands for what it says...'
  type: string
  inputBinding:
    prefix: '- Beware'
outputs: []
cwlVersion: v1.1
baseCommand:
- lrzuntar
