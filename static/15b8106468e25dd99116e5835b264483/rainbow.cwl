class: CommandLineTool
id: rainbow.cwl
inputs:
- id: l
  doc: 'Read length, default: 0 variable'
  type: long
  inputBinding:
    prefix: -l
- id: m
  doc: Maximum mismatches [4]
  type: long
  inputBinding:
    prefix: -m
- id: e
  doc: Exactly matching threshold [2000]
  type: long
  inputBinding:
    prefix: -e
- id: l
  doc: Low level of polymorphism
  type: boolean
  inputBinding:
    prefix: -L
- id: i
  doc: Input rbasm output file [stdin]
  type: string
  inputBinding:
    prefix: -i
- id: a
  doc: output assembly
  type: boolean
  inputBinding:
    prefix: -a
- id: o
  doc: Output file for merged contigs, one line per cluster [stdout]
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: Maximum number of divided clusters to merge [300]
  type: long
  inputBinding:
    prefix: -N
- id: l
  doc: Minimum overlap when assemble two reads (valid only when '-a' is opened) [5]
  type: long
  inputBinding:
    prefix: -l
- id: f
  doc: Minimum fraction of similarity when assembly (valid only when '-a' is opened)
    [0.90]
  type: double
  inputBinding:
    prefix: -f
- id: r
  doc: Minimum number of reads to assemble (valid only when '-a' is opened) [5]
  type: long
  inputBinding:
    prefix: -r
- id: r
  doc: Maximum number of reads to assemble (valid only when '-a' is opened) [300]
  type: long
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- rainbow
