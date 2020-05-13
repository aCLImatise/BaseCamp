class: CommandLineTool
id: ParseLog.py.cwl
inputs:
- id: table
  doc: tab delimited table of the selected annotations.
  type: string
  inputBinding:
    position: 0
- id: o
  doc: 'Explicit output file name(s). Note, this argument cannot be used with the
    --failed, --outdir, or --outname arguments. If unspecified, then the output filename
    will be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
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
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: l
  doc: 'List of log files to parse. (default: None)'
  type: string[]
  inputBinding:
    prefix: -l
- id: f
  doc: 'List of fields to collect. The sequence identifier may be specified using
    the hidden field name "ID". (default: None)'
  type: string[]
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- ParseLog.py
