#!/usr/bin/env cwl-runner

baseCommand:
- gaas_sync_dat_and_embl.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_sync_dat_and_embl.pl
inputs:
- doc: Input dat file provided by ENA
  id: dat
  inputBinding:
    prefix: --dat
  type: boolean
- doc: Input embl file
  id: embl
  inputBinding:
    prefix: --embl
  type: boolean
- doc: Bolean. Believe in AC line. Instead of looking at the sequence size, look at
    the AC line (the second one of each record) as common information for the two
    files.
  id: bac
  inputBinding:
    prefix: --bac
  type: boolean
- doc: The output will be the EMBL file with the record "headers" modified
  id: output
  inputBinding:
    prefix: --output
  type: string
