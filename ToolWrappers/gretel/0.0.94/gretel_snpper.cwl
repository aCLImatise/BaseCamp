class: CommandLineTool
id: gretel_snpper.cwl
inputs:
- id: in_contig
  doc: "[-s S] [-e E]\n[--depth DEPTH]"
  type: string
  inputBinding:
    prefix: --contig
- id: in_bam
  doc: bam of reads aligned to (psuedo)-reference
  type: string
  inputBinding:
    prefix: --bam
- id: in_start_default_
  doc: start (default = 1)
  type: long
  inputBinding:
    prefix: -s
- id: in_end_default_length
  doc: end (default = length of the reference)
  type: long
  inputBinding:
    prefix: -e
- id: in_depth
  doc: "number of reads that must feature a read to call that base\nas a possible\
    \ variant (default = 0)"
  type: long
  inputBinding:
    prefix: --depth
- id: in_aggressively
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_call
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_variants
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_generate
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gretel-snpper
