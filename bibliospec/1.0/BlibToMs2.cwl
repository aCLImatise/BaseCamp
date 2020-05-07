class: CommandLineTool
id: BlibToMs2.cwl
inputs:
- id: library
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: f
  doc: '[ --file-name ] arg                Name the output ms2 file.  Default is  <library
    name>.ms2.'
  type: boolean
  inputBinding:
    prefix: -f
- id: m
  doc: '[ --mz-precision ] arg (=2)        Precision for peak m/z printed to ms2.  Default
    2.'
  type: boolean
  inputBinding:
    prefix: -m
- id: i
  doc: '[ --intensity-precision ] arg (=1) Precision for peak intensities.   Default
    1.'
  type: boolean
  inputBinding:
    prefix: -i
- id: p
  doc: '[ --mod-precision ] arg (=-1)      Precision for modification masses.   Default
    -1 (use value in PeptideModSeq  column).'
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: '[ --parameter-file ] arg           File containing search parameters.   Command
    line values override file  values.'
  type: boolean
  inputBinding:
    prefix: -p
- id: v
  doc: '[ --verbosity ] arg (=status)      Control the level of output to stderr.  (silent,
    error, status, warn, debug,  detail, all)  Default status.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibToMs2
