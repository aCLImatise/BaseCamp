class: CommandLineTool
id: metagenome_contributions.py.cwl
inputs:
- id: input_otu_table
  doc: the input otu table in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_table
- id: output_fp
  doc: the output file for the metagenome contributions [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- metagenome_contributions.py
