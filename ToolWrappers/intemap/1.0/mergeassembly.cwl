class: CommandLineTool
id: mergeassembly.cwl
inputs:
- id: in_subject_contig_name
  doc: Subject Contig name
  type: boolean
  inputBinding:
    prefix: -s
- id: in_output_file_prefix
  doc: Output file prefix
  type: File
  inputBinding:
    prefix: -o
- id: in_query_contig_name
  doc: Query Contig name
  type: boolean
  inputBinding:
    prefix: -q
- id: in_stringent_rankrank_highest
  doc: "stringent rank[0]\nrank: 0 highest stringent; 1 low stringent\n"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_option_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_value_one
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: Output file prefix
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
cwlVersion: v1.1
baseCommand:
- mergeassembly
