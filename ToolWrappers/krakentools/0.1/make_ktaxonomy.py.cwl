class: CommandLineTool
id: make_ktaxonomy.py.cwl
inputs:
- id: in_nodes
  doc: nodes.dmp file from taxonomy
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_names
  doc: names.dmp file from taxonomy
  type: File?
  inputBinding:
    prefix: --names
- id: in_seq_id_two_taxid
  doc: seqid2taxid.map file
  type: File?
  inputBinding:
    prefix: --seqid2taxid
- id: in_output
  doc: "output taxonomy file\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output taxonomy file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- make_ktaxonomy.py
