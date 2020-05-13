class: CommandLineTool
id: kaiju_makedb.cwl
inputs:
- id: t
  doc: Set number of parallel threads for index construction to X \(default:5\) The
    more threads are used, the higher the memory requirement becomes.
  type: string
  inputBinding:
    prefix: -t
- id: no_download
  doc: Do not download files, but use the existing files in the folder.
  type: boolean
  inputBinding:
    prefix: --no-download
- id: index_only
  doc: Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download.
  type: boolean
  inputBinding:
    prefix: --index-only
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-makedb
