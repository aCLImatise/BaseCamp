class: CommandLineTool
id: livekraken_sankey_diagram.py.cwl
inputs:
- id: in_in_file
  doc: "Used to list input files, can be used several times to\ninput an ordered list\
    \ of files"
  type: File?
  inputBinding:
    prefix: --infile
- id: in_color
  doc: Used to switch from red-green to red-blue color scheme
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_compress
  doc: "Used to \"compress\" unclassified nodes by only keeping\na number of reads\
    \ corresponding to the sum of flows\nfrom/to nodes other than unclassified."
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_rank
  doc: Used to set on which level to bin the classified reads
  type: string?
  inputBinding:
    prefix: --rank
- id: in_top
  doc: "Used to determine the top x nodes to display for every\ncycle (plus one node\
    \ serving as bin for everyting\nelse)"
  type: string?
  inputBinding:
    prefix: --top
- id: in_output
  doc: "Used to set the output directory path for the html and\njson file"
  type: File?
  inputBinding:
    prefix: --output
- id: in_names
  doc: "Used to set the path to the names.dmp for taxonomic\nresolution"
  type: File?
  inputBinding:
    prefix: --names
- id: in_nodes
  doc: "Used to set the path to the nodes.dmp for taxonomic\nresolution\n"
  type: File?
  inputBinding:
    prefix: --nodes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Used to set the output directory path for the html and\njson file"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- livekraken_sankey_diagram.py
