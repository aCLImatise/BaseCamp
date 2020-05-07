class: CommandLineTool
id: idconvert.cwl
inputs:
- id: file_masks
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: f
  doc: '[ --filelist ] arg    : specify text file containing filenames'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: "[ --outdir ] arg (=.) : set output directory ('-' for stdout) [.]"
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: '[ --config ] arg      : configuration file (optionName=value)'
  type: boolean
  inputBinding:
    prefix: -c
- id: e
  doc: '[ --ext ] arg         : set extension for output files [mzid|pepXML|txt]'
  type: boolean
  inputBinding:
    prefix: -e
- id: mz_ident_ml
  doc: ': write mzIdentML format [default]'
  type: boolean
  inputBinding:
    prefix: --mzIdentML
- id: pep_xml
  doc: ': write pepXML format'
  type: boolean
  inputBinding:
    prefix: --pepXML
- id: text
  doc: ': write hierarchical text format'
  type: boolean
  inputBinding:
    prefix: --text
- id: v
  doc: '[ --verbose ]         : display detailed progress information'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- idconvert
