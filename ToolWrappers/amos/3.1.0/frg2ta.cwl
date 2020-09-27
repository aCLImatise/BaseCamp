class: CommandLineTool
id: frg2ta.cwl
inputs:
- id: in_check
  doc: Prints out those seqnames that are shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -check
- id: in_min_seq
  doc: sets MINSEQ.  Default is 64
  type: boolean
  inputBinding:
    prefix: -minseq
- id: in_output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    prefix: -o
- id: in_filter
  doc: filters the .frg file for sequences shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -filter
- id: in_no_qual
  doc: doesnt create .qual file
  type: boolean
  inputBinding:
    prefix: -noqual
- id: in_quali_dx
  doc: creates an index for the qual file [needed by cutAsm]
  type: boolean
  inputBinding:
    prefix: -qualidx
- id: in_mates
  doc: creates a .mates file indicating which sequences are mates
  type: boolean
  inputBinding:
    prefix: -mates
- id: in_no_names
  doc: Uses Ids rather than trying to figure out seqnames
  type: boolean
  inputBinding:
    prefix: -nonames
- id: in_prints_version_information
  doc: Prints version information
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- frg2ta
