class: CommandLineTool
id: DBshow.cwl
inputs:
- id: u
  doc: ': Show the untrimmed database.'
  type: boolean
  inputBinding:
    prefix: -u
- id: q
  doc: ': Show also the .quiva streams.'
  type: boolean
  inputBinding:
    prefix: -q
- id: a
  doc: ': Show also the .arrow pulse sequences.'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: ': Do not show the default read DNA sequences.'
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: ': Show mask intervals and highlight in sequence.'
  type: boolean
  inputBinding:
    prefix: -m
- id: q
  doc: ': Produce a .quiva file (ignore all other options but -uU).'
  type: boolean
  inputBinding:
    prefix: -Q
- id: a
  doc: ': Produce a .arrow file (ignore all other options but -uw).'
  type: boolean
  inputBinding:
    prefix: -A
- id: u
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean
  inputBinding:
    prefix: -U
- id: w
  doc: ': Print -w bp per line (default is 80).'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- DBshow
