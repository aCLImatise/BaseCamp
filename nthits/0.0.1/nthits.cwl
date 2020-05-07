class: CommandLineTool
id: nthits.cwl
inputs:
- id: threads
  doc: use N parallel threads [16]
  type: string
  inputBinding:
    prefix: --threads
- id: km_er
  doc: the length of kmer [64]
  type: string
  inputBinding:
    prefix: --kmer
- id: cut_off
  doc: the maximum coverage of kmer in output
  type: string
  inputBinding:
    prefix: --cutoff
- id: pref
  doc: the prefix for output file name [repeat]
  type: string
  inputBinding:
    prefix: --pref
- id: out_bloom
  doc: output the most frequent k-mers in a Bloom filter
  type: boolean
  inputBinding:
    prefix: --outbloom
- id: solid
  doc: output the solid k-mers (non-errornous k-mers)
  type: boolean
  inputBinding:
    prefix: --solid
outputs: []
cwlVersion: v1.1
baseCommand:
- nthits
