class: CommandLineTool
id: bolt_gff3_convert.cwl
inputs:
- id: in_attributes
  doc: select attributes by key
  type: string?
  inputBinding:
    prefix: --attributes
- id: in_end
  doc: select end
  type: boolean?
  inputBinding:
    prefix: --end
- id: in_file_path
  doc: A bam file (*require)
  type: File?
  inputBinding:
    prefix: --filepath
- id: in_header
  doc: hiding headers
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_limit
  doc: Output Limit (default -1)
  type: long?
  inputBinding:
    prefix: --limit
- id: in_phase
  doc: select phase
  type: boolean?
  inputBinding:
    prefix: --phase
- id: in_replacement
  doc: the replacement character if there is a blank value
  type: string?
  inputBinding:
    prefix: --replacement
- id: in_score
  doc: select score
  type: boolean?
  inputBinding:
    prefix: --score
- id: in_separator
  doc: the separator of each values (default "\t")
  type: string?
  inputBinding:
    prefix: --separator
- id: in_seq_id
  doc: select seqid
  type: boolean?
  inputBinding:
    prefix: --seqid
- id: in_source
  doc: select source
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_start
  doc: select start
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_strand
  doc: select strand
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_type
  doc: select type
  type: boolean?
  inputBinding:
    prefix: --type
- id: in_genie
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_three
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bolt
- gff3
- convert
