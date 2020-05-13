class: CommandLineTool
id: prophyle_otu_table.py.cwl
inputs:
- id: r
  doc: comma separated list of ranks to build the OTU table for [species,genus,family,phylum,class,order,kingdom]
  type: string
  inputBinding:
    prefix: -r
- id: t
  doc: position of the taxid in the input lines [3 (for sam and kraken format)]
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: position of the read id in the input lines [1 (for sam, use 2 for kraken)]
  type: string
  inputBinding:
    prefix: -i
- id: l
  doc: log file [stderr]
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_otu_table.py
