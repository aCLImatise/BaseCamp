class: CommandLineTool
id: ParseDb.py_split.cwl
inputs:
- id: d
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: f
  doc: 'Annotation field by which to split database files. (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: num
  doc: 'Specify to define the field as numeric and group records by whether they are
    less than or at least (greater than or equal to) the specified value. (default:
    None)'
  type: string
  inputBinding:
    prefix: --num
outputs: []
cwlVersion: v1.1
baseCommand:
- ParseDb.py
- split
