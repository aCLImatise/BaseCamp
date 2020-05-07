class: CommandLineTool
id: gaas_sync_dat_and_embl.pl.cwl
inputs:
- id: dat
  doc: Input dat file provided by ENA
  type: boolean
  inputBinding:
    prefix: --dat
- id: embl
  doc: Input embl file
  type: boolean
  inputBinding:
    prefix: --embl
- id: bac
  doc: Bolean. Believe in AC line. Instead of looking at the sequence size, look at
    the AC line (the second one of each record) as common information for the two
    files.
  type: boolean
  inputBinding:
    prefix: --bac
- id: output
  doc: The output will be the EMBL file with the record "headers" modified
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_sync_dat_and_embl.pl
