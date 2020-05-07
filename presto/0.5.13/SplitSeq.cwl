class: CommandLineTool
id: SplitSeq.py_select.cwl
inputs:
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
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
- id: fast_a
  doc: 'Specify to force output as FASTA rather than FASTQ. (default: None)'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: f
  doc: 'The annotation field for selection criteria. (default: None)'
  type: string
  inputBinding:
    prefix: -f
- id: u
  doc: 'A list of values to select for in the specified field. Mutually exclusive
    with -t. (default: None)'
  type: string[]
  inputBinding:
    prefix: -u
- id: t
  doc: 'A tab delimited file specifying values to select for in the specified field.
    The file must be formatted with the given field name in the header row. Values
    will be taken from that column. Mutually exclusive with -u. (default: None)'
  type: string
  inputBinding:
    prefix: -t
- id: not
  doc: 'If specified, will perform negative matching. Meaning, sequences will be selected
    if they fail to match for all specified values. (default: False)'
  type: boolean
  inputBinding:
    prefix: --not
outputs: []
cwlVersion: v1.1
baseCommand:
- SplitSeq.py
- select
