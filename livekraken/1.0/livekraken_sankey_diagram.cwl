class: CommandLineTool
id: livekraken_sankey_diagram.py.cwl
inputs:
- id: in_file
  doc: Used to list input files, can be used several times to input an ordered list
    of files
  type: string
  inputBinding:
    prefix: --infile
- id: color
  doc: Used to switch from red-green to red-blue color scheme
  type: boolean
  inputBinding:
    prefix: --color
- id: compress
  doc: Used to "compress" unclassified nodes by only keeping a number of reads corresponding
    to the sum of flows from/to nodes other than unclassified.
  type: boolean
  inputBinding:
    prefix: --compress
- id: rank
  doc: Used to set on which level to bin the classified reads
  type: string
  inputBinding:
    prefix: --rank
- id: top
  doc: Used to determine the top x nodes to display for every cycle (plus one node
    serving as bin for everyting else)
  type: string
  inputBinding:
    prefix: --top
- id: output
  doc: Used to set the output directory path for the html and json file
  type: string
  inputBinding:
    prefix: --output
- id: names
  doc: Used to set the path to the names.dmp for taxonomic resolution
  type: string
  inputBinding:
    prefix: --names
- id: nodes
  doc: Used to set the path to the nodes.dmp for taxonomic resolution
  type: string
  inputBinding:
    prefix: --nodes
outputs: []
cwlVersion: v1.1
baseCommand:
- livekraken_sankey_diagram.py
