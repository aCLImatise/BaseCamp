class: CommandLineTool
id: mafSpeciesSubset.cwl
inputs:
- id: in_keep_first
  doc: "- If set, keep the first 'a' line in a maf no matter what\nUseful for mafFrag\
    \ results where we use this for the gene name\n"
  type: boolean?
  inputBinding:
    prefix: -keepFirst
- id: in_truth_dot
  doc: species.lst is a file with a list of species to keep
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafSpeciesSubset
