class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophyle_otu_table.py.cwl
inputs:
- id: comma_separated_list
  doc: comma separated list of ranks to build the OTU table for [species,genus,family,phylum,class,order,kingdom]
  type: string
  inputBinding:
    prefix: -r
- id: position_taxid_input
  doc: position of the taxid in the input lines [3 (for sam and kraken format)]
  type: string
  inputBinding:
    prefix: -t
- id: position_read_d
  doc: position of the read id in the input lines [1 (for sam, use 2 for kraken)]
  type: string
  inputBinding:
    prefix: -i
- id: log_file
  doc: log file [stderr]
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_otu_table.py
