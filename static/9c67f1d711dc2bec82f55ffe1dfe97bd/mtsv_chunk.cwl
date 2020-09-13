class: CommandLineTool
id: ../../../mtsv_chunk.cwl
inputs:
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_input
  doc: Path(s) to vedro results files to collapse
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: Folder path to write split outupt files to.
  type: File
  inputBinding:
    prefix: --output
- id: in_gb
  doc: 'Chunk size (in gigabytes). [default: 1.0]'
  type: long
  inputBinding:
    prefix: --gb
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mtsv-chunk
