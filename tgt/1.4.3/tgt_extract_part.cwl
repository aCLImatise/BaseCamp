class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tgt_extract_part.py.cwl
inputs:
- id: start_time_interval
  doc: Start time of the interval to be extracted.
  type: string
  inputBinding:
    prefix: -s
- id: end_time_extracted
  doc: End time of the interval to be extracted.
  type: string
  inputBinding:
    prefix: -e
- id: path_output_file
  doc: Path to the output file. Defaults to the original path with _part appended
    to the filename.
  type: string
  inputBinding:
    prefix: -o
- id: tg_path
  doc: Path to the input TextGrid
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tgt-extract-part.py
