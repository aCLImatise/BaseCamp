#!/usr/bin/env cwl-runner

baseCommand:
- SnpSift
class: CommandLineTool
cwlVersion: v1.0
id: snpsift
inputs:
- doc: ': Debug.'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': Download database, if not available locally. Default: true.'
  id: download
  inputBinding:
    prefix: -download
  type: boolean
- doc: ': Do not download a database, if not available locally.'
  id: no_download
  inputBinding:
    prefix: -noDownload
  type: boolean
- doc: ': Do not report usage statistics to server.'
  id: no_log
  inputBinding:
    prefix: -noLog
  type: boolean
- doc: ': Verbose.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
