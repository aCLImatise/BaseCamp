class: CommandLineTool
id: collapse_samples.py.cwl
inputs:
- id: input_biom_fp
  doc: the biom table containing the samples to be collapsed [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_biom_fp
- id: mapping_fp
  doc: the sample metdata mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: output_biom_fp
  doc: path where collapsed biom table should be written [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_biom_fp
- id: output_mapping_fp
  doc: path where collapsed mapping file should be written [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_mapping_fp
- id: collapse_fields
  doc: comma-separated list of fields to collapse on [REQUIRED]
  type: string
  inputBinding:
    prefix: --collapse_fields
outputs: []
cwlVersion: v1.1
baseCommand:
- collapse_samples.py
