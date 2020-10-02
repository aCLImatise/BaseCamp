class: CommandLineTool
id: ebi_metagenomics_download_run_data.cwl
inputs:
- id: in_run
  doc: Id of a run in EBI metagenomics
  type: string
  inputBinding:
    prefix: --run
- id: in_data
  doc: Data to download for the run (accessible with
  type: string
  inputBinding:
    prefix: --data
- id: in_get_possible_run_data
  doc: --file PATH  File to export downloaded data
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ebi_metagenomics
- download_run_data
