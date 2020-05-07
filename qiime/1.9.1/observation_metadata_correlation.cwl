class: CommandLineTool
id: observation_metadata_correlation.py.cwl
inputs:
- id: otu_table_fp
  doc: path to input BIOM table [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: output_fp
  doc: path to the output file to be created [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
- id: mapping_fp
  doc: path to metadata mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: category
  doc: name of the category in the metadata mapping file over which to run the analysis
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --category
outputs: []
cwlVersion: v1.1
baseCommand:
- observation_metadata_correlation.py
