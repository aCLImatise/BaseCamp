#!/usr/bin/env cwl-runner

baseCommand:
- BedChunk
class: CommandLineTool
cwlVersion: v1.0
id: bedchunk
inputs:
- doc: 'The desired chunk size. Note: Not all chunks will have this size. Regions
    are split to chunks that are closest to the the desired size.'
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: "Input BED file. If unset, reads from STDIN. Default value: ''"
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output BED file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
