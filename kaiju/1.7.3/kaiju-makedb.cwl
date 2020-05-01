#!/usr/bin/env cwl-runner

baseCommand:
- kaiju-makedb
class: CommandLineTool
cwlVersion: v1.0
id: kaiju-makedb
inputs:
- doc: Set number of parallel threads for index construction to X \(default:5\) The
    more threads are used, the higher the memory requirement becomes.
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Do not download files, but use the existing files in the folder.
  id: no_download
  inputBinding:
    prefix: --no-download
  type: boolean
- doc: Only create BWT and FMI from kaiju_db_*.faa files, implies --no-download.
  id: index_only
  inputBinding:
    prefix: --index-only
  type: boolean
