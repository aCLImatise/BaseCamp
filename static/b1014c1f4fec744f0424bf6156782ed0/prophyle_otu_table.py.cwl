class: CommandLineTool
id: prophyle_otu_table.py.cwl
inputs:
- id: in_comma_separated_list
  doc: "comma separated list of ranks to build the OTU table for\n[species,genus,family,phylum,class,order,kingdom]"
  type: string
  inputBinding:
    prefix: -r
- id: in_position_taxid_input
  doc: "position of the taxid in the input lines [3 (for sam and\nkraken format)]"
  type: long
  inputBinding:
    prefix: -t
- id: in_position_read_i
  doc: "position of the read id in the input lines [1 (for sam, use\n2 for kraken)]"
  type: long
  inputBinding:
    prefix: -i
- id: in_log_file
  doc: log file [stderr]
  type: File
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle_otu_table.py
