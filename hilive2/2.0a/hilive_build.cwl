class: CommandLineTool
id: hilive_build.cwl
inputs:
- id: l
  doc: '[ --license ]         Print licensing information and exit'
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: '[ --input ] arg       Reference genome(s) in (multi-)FASTA format.  [REQUIRED]'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --out-prefix ] arg  Output file prefix. Several files with the same  prefix
    will be created. [REQUIRED]'
  type: boolean
  inputBinding:
    prefix: -o
- id: do_not_convert_spaces
  doc: 'Do not convert all spaces in reference ids to  underscores [Default: converting
    is on]'
  type: boolean
  inputBinding:
    prefix: --do-not-convert-spaces
- id: trim_after_space
  doc: 'Trim all reference ids after first space [Default:  false]'
  type: boolean
  inputBinding:
    prefix: --trim-after-space
outputs: []
cwlVersion: v1.1
baseCommand:
- hilive-build
