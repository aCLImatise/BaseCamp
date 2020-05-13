class: CommandLineTool
id: coval_filter_short.pl.cwl
inputs:
- id: ref
  doc: reference fasta file used for the alignment
  type: string
  inputBinding:
    prefix: --ref
- id: pref
  doc: prefix of output file
  type: string
  inputBinding:
    prefix: --pref
- id: num
  doc: 'maximum number of mismatches contained in a read [default: 2] (incompatible
    with --mrate)'
  type: string
  inputBinding:
    prefix: --num
- id: m_rate
  doc: maximum rate of mismatches contained in a read [0..1.0] (incompatible with
    --num)
  type: string
  inputBinding:
    prefix: --mrate
outputs: []
cwlVersion: v1.1
baseCommand:
- coval-filter-short.pl
