class: CommandLineTool
id: exonpairs.cwl
inputs:
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: min_intron
  doc: minimum Intron length [30]
  type: long
  inputBinding:
    prefix: -min-intron
- id: max_intron
  doc: maximum Intron length [10000]
  type: long
  inputBinding:
    prefix: -max-intron
- id: ein_it_length
  doc: minimum Einit length in bp [10]
  type: long
  inputBinding:
    prefix: -einit-length
- id: eterm_length
  doc: minimum Eterm length in bp [10]
  type: long
  inputBinding:
    prefix: -eterm-length
- id: exon_length
  doc: minimum Exon length in bp [30]
  type: long
  inputBinding:
    prefix: -exon-length
- id: intron_score
  doc: minimum Intron score in bits [-5]
  type: double
  inputBinding:
    prefix: -intron-score
- id: ein_it_score
  doc: minimum Einit score in bits [-5]
  type: double
  inputBinding:
    prefix: -einit-score
- id: eterm_score
  doc: minimum Eterm score in bits [-5]
  type: double
  inputBinding:
    prefix: -eterm-score
- id: exon_score
  doc: minimum Exon score in bits [-5]
  type: double
  inputBinding:
    prefix: -exon-score
- id: pair_score
  doc: minimum pair score (exon-intron-exon) [10]
  type: double
  inputBinding:
    prefix: -pair-score
- id: flank_length
  doc: length of flanking sequence per exon [20]
  type: long
  inputBinding:
    prefix: -flank-length
- id: lc_mask
  doc: treat lowercase as N
  type: boolean
  inputBinding:
    prefix: -lcmask
outputs: []
cwlVersion: v1.1
baseCommand:
- exonpairs
