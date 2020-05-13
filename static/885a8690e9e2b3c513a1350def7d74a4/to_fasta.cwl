class: CommandLineTool
id: to_fasta.py.cwl
inputs:
- id: fast_q
  doc: including stdin or compressed file {zip,gz,tar,bz}
  type: string
  inputBinding:
    position: 0
- id: trim_5p
  doc: trim specified number of bases from 5'ends
  type: string
  inputBinding:
    prefix: --trim-5p
- id: trim_3p
  doc: trim specified number of bases from 3'ends
  type: string
  inputBinding:
    prefix: --trim-3p
- id: seed_5p
  doc: "5' adapter match length in bp (default: 7)"
  type: string
  inputBinding:
    prefix: --seed-5p
- id: seed_3p
  doc: "3' adapter match length in bp (default: 7)"
  type: string
  inputBinding:
    prefix: --seed-3p
- id: m
  doc: 'minimum read length in bp (default: 16)'
  type: string
  inputBinding:
    prefix: -m
- id: x
  doc: 'maximum read length in bp (default: 36)'
  type: string
  inputBinding:
    prefix: -x
- id: s
  doc: 'sensitive adapter search with 1 mismatch (default: off)'
  type: boolean
  inputBinding:
    prefix: -s
- id: b
  doc: only print the reads with both 5' and 3' adapter matches
  type: boolean
  inputBinding:
    prefix: -B
- id: a
  doc: print all reads with and without adapter matches if the reads are in the range
    specified with '-m' and '-x'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- to_fasta.py
