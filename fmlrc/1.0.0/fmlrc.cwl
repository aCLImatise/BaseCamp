class: CommandLineTool
id: fmlrc.cwl
inputs:
- id: comp_ms_bwt_npy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: long_read_sfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: corrected_read_sfa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: v
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: k
  doc: 'small k-mer size (default: 21)'
  type: long
  inputBinding:
    prefix: -k
- id: k
  doc: 'large K-mer size (default: 59), set K=k for single pass'
  type: long
  inputBinding:
    prefix: -K
- id: p
  doc: number of correction threads
  type: long
  inputBinding:
    prefix: -p
- id: b
  doc: 'index of read to start with (default: 0)'
  type: long
  inputBinding:
    prefix: -b
- id: e
  doc: 'index of read to end with (default: end of file)'
  type: long
  inputBinding:
    prefix: -e
- id: m
  doc: 'absolute minimum count to consider a path (default: 5)'
  type: long
  inputBinding:
    prefix: -m
- id: f
  doc: 'dynamic minimum fraction of median to consider a path (default: .10)'
  type: double
  inputBinding:
    prefix: -f
- id: b
  doc: 'set branch limit to <INT>*<k or K> (default: 4)'
  type: long
  inputBinding:
    prefix: -B
- id: i
  doc: build a sampled FM-index instead of bit arrays
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: 'FM-index is sampled every 2**<INT> values (default: 8); requires -i'
  type: long
  inputBinding:
    prefix: -F
- id: v
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- fmlrc
