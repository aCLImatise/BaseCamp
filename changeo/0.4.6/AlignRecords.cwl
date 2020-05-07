class: CommandLineTool
id: AlignRecords.py_block.cwl
inputs:
- id: d
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
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
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: format
  doc: 'Specify input and output format. (default: changeo)'
  type: string
  inputBinding:
    prefix: --format
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: sf
  doc: 'The sequence fields to multiple align within each group. (default: None)'
  type: string[]
  inputBinding:
    prefix: --sf
- id: gf
  doc: 'Additional (not allele call) fields to use for grouping. (default: None)'
  type: string[]
  inputBinding:
    prefix: --gf
- id: calls
  doc: "[{v,d,j} ...] Segment calls (allele assignments) to use for grouping. (default:\
    \ ['v', 'j'])"
  type: string
  inputBinding:
    prefix: --calls
- id: mode
  doc: 'Specifies whether to use the V(D)J allele or gene when an allele call field
    (--calls) is specified. (default: gene)'
  type: string
  inputBinding:
    prefix: --mode
- id: act
  doc: 'Specifies how to handle multiple values within default allele call fields.
    Currently, only "first" is supported. (default: first)'
  type: string
  inputBinding:
    prefix: --act
- id: exec
  doc: 'The location of the MUSCLE executable (default: muscle)'
  type: string
  inputBinding:
    prefix: --exec
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignRecords.py
- block
