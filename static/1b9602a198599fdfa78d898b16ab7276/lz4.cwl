class: CommandLineTool
id: lz4.cwl
inputs:
- id: d
  doc: ': decompression (default for .lz4 extension)'
  type: boolean
  inputBinding:
    prefix: -d
- id: z
  doc: ': force compression'
  type: boolean
  inputBinding:
    prefix: -z
- id: f
  doc: ': overwrite output without prompting '
  type: boolean
  inputBinding:
    prefix: -f
- id: v
  doc: ': display Version number and exit'
  type: boolean
  inputBinding:
    prefix: -V
- id: v
  doc: ': verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: ': suppress warnings; specify twice to suppress errors too'
  type: boolean
  inputBinding:
    prefix: -q
- id: c
  doc: ': force write to standard output, even if it is the console'
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: ': test compressed file integrity'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: ': multiple input files (implies automatic output filenames)'
  type: boolean
  inputBinding:
    prefix: -m
- id: l
  doc: ': compress using Legacy format (Linux kernel compression)'
  type: boolean
  inputBinding:
    prefix: -l
- id: b
  doc: '#    : Block size [4-7](default : 7)'
  type: boolean
  inputBinding:
    prefix: -B
- id: bd
  doc: ': Block dependency (improve compression ratio)'
  type: boolean
  inputBinding:
    prefix: -BD
- id: b
  doc: ': benchmark file(s)'
  type: boolean
  inputBinding:
    prefix: -b
- id: i
  doc: '#    : iteration loops [1-9](default : 3), benchmark mode only'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- lz4
