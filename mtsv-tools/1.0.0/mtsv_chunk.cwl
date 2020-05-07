class: CommandLineTool
id: mtsv_chunk.cwl
inputs:
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: input
  doc: Path(s) to vedro results files to collapse
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Folder path to write split outupt files to.
  type: string
  inputBinding:
    prefix: --output
- id: gb
  doc: 'Chunk size (in gigabytes). [default: 1.0]'
  type: long
  inputBinding:
    prefix: --gb
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-chunk
