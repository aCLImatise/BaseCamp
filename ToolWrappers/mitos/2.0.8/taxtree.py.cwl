class: CommandLineTool
id: taxtree.py.cwl
inputs:
- id: in_gb_dir
  doc: genbank directory
  type: Directory
  inputBinding:
    prefix: --gbdir
- id: in_names
  doc: names.dmp file to use
  type: File
  inputBinding:
    prefix: --names
- id: in_nodes
  doc: nodes.dmp file to use
  type: File
  inputBinding:
    prefix: --nodes
- id: in_mergeddmp_file_use
  doc: merged.dmp file to use
  type: File
  inputBinding:
    prefix: --merged
- id: in_search_closest_mitogenomes
  doc: search for closest mitogenomes
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taxtree.py
