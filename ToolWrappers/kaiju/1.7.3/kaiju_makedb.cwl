class: CommandLineTool
id: kaiju_makedb.cwl
inputs:
- id: in_set_number_parallel
  doc: "Set number of parallel threads for index construction to X \\(default:5\\\
    )\nThe more threads are used, the higher the memory requirement becomes."
  type: long?
  inputBinding:
    prefix: -t
- id: in_no_download
  doc: Do not download files, but use the existing files in the folder.
  type: boolean?
  inputBinding:
    prefix: --no-download
- id: in_index_only
  doc: Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download.
  type: boolean?
  inputBinding:
    prefix: --index-only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kaiju-makedb
