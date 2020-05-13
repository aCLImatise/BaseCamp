class: CommandLineTool
id: AlignSets.py_table.cwl
inputs:
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
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: p
  doc: 'A FASTA file containing primer sequences. (default: None)'
  type: string
  inputBinding:
    prefix: -p
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
  type: string
  inputBinding:
    prefix: -o
- id: reverse
  doc: "If specified create a 3' offset table instead (default: False)"
  type: boolean
  inputBinding:
    prefix: --reverse
- id: exec
  doc: 'The name or location of the muscle executable. (default: muscle)'
  type: string
  inputBinding:
    prefix: --exec
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignSets.py
- table
