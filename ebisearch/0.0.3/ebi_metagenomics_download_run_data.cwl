class: CommandLineTool
id: ebi_metagenomics_download_run_data.cwl
inputs:
- id: run
  doc: Id of a run in EBI metagenomics
  type: string
  inputBinding:
    prefix: --run
- id: data
  doc: Data to download for the run (accessible with get_possible_run_data
  type: string
  inputBinding:
    prefix: --data
- id: file
  doc: File to export downloaded data
  type: File
  inputBinding:
    prefix: --file
outputs: []
cwlVersion: v1.1
baseCommand:
- ebi_metagenomics
- download_run_data
