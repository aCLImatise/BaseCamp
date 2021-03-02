class: CommandLineTool
id: exonpairs.cwl
inputs:
- id: in_min_intron
  doc: minimum Intron length [30]
  type: long?
  inputBinding:
    prefix: -min-intron
- id: in_max_intron
  doc: maximum Intron length [10000]
  type: long?
  inputBinding:
    prefix: -max-intron
- id: in_ein_it_length
  doc: minimum Einit length in bp [10]
  type: long?
  inputBinding:
    prefix: -einit-length
- id: in_eterm_length
  doc: minimum Eterm length in bp [10]
  type: long?
  inputBinding:
    prefix: -eterm-length
- id: in_exon_length
  doc: minimum Exon length in bp [30]
  type: long?
  inputBinding:
    prefix: -exon-length
- id: in_intron_score
  doc: minimum Intron score in bits [-5]
  type: double?
  inputBinding:
    prefix: -intron-score
- id: in_ein_it_score
  doc: minimum Einit score in bits [-5]
  type: double?
  inputBinding:
    prefix: -einit-score
- id: in_eterm_score
  doc: minimum Eterm score in bits [-5]
  type: double?
  inputBinding:
    prefix: -eterm-score
- id: in_exon_score
  doc: minimum Exon score in bits [-5]
  type: double?
  inputBinding:
    prefix: -exon-score
- id: in_pair_score
  doc: minimum pair score (exon-intron-exon) [10]
  type: double?
  inputBinding:
    prefix: -pair-score
- id: in_flank_length
  doc: length of flanking sequence per exon [20]
  type: long?
  inputBinding:
    prefix: -flank-length
- id: in_lc_mask
  doc: treat lowercase as N
  type: boolean?
  inputBinding:
    prefix: -lcmask
- id: in_hmm_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- exonpairs
