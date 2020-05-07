class: CommandLineTool
id: dsrc.cwl
inputs:
- id: d
  doc: '<n>   : DNA compression mode: 0-3, default: 0'
  type: boolean
  inputBinding:
    prefix: -d
- id: q
  doc: '<n>   : Quality compression mode: 0-2, default: 0'
  type: boolean
  inputBinding:
    prefix: -q
- id: f
  doc: '<1,..>: keep only those fields no. in tag field string, default: keep all'
  type: boolean
  inputBinding:
    prefix: -f
- id: b
  doc: '<n>   : FASTQ input buffer size in MB, default: 8'
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: '<n>   : Quality offset, default: 0'
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: ': use Quality lossy mode (Illumina binning scheme), default: 0'
  type: boolean
  inputBinding:
    prefix: -l
- id: c
  doc: ': calculate and check CRC32 checksum calculation per block, default: 0'
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: '<n>   : processing threads number, default (available h/w threads): 8, max:
    64'
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: ': use stdin/stdout for reading/writing raw FASTQ data'
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: ': verbose mode, default: false'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- dsrc
