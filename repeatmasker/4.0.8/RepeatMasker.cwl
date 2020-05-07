class: CommandLineTool
id: RepeatMasker.cwl
inputs:
- id: sw
  doc: perc perc perc  query    position in query     matching repeat      position
    in  repeat
  type: string
  inputBinding:
    position: 0
- id: chr1_4622259
  doc: '78 TTAGGTTGGTGCAAAAGTAATTGTGGGTTTTAGCATTTAAAGTAATACCA 127 i  v    iv    ?        iv  '
  type: string
  inputBinding:
    position: 0
- id: chr1_4622259
  doc: '128 AAAACCACAACTACTTTTGCACCAACCTAA 157 i   i                   '
  type: string
  inputBinding:
    position: 0
- id: iv
  doc: 'vvi   ii -    i  i    v-      vv  '
  type: string
  inputBinding:
    position: 0
- id: iv
  doc: 'ii     i   -  i    '
  type: string
  inputBinding:
    position: 0
- id: al_us
  doc: 178        43249 bp    29.07 %
  type: string
  inputBinding:
    position: 0
- id: mirs
  doc: 17         1946 bp     1.31 %
  type: string
  inputBinding:
    position: 1
- id: mal_rs
  doc: 8         4079 bp     2.74 %
  type: string
  inputBinding:
    position: 0
- id: er_vl
  doc: 0            0 bp     0.00 %
  type: string
  inputBinding:
    position: 1
- id: erv_class_i
  doc: 5         1754 bp     1.18 %
  type: string
  inputBinding:
    position: 2
- id: erv_class_ii
  doc: 0            0 bp     0.00 %
  type: string
  inputBinding:
    position: 3
- id: mer1_type
  doc: 12         1903 bp     1.28 %
  type: string
  inputBinding:
    position: 0
- id: mer2_type
  doc: 4         2466 bp     1.66 %
  type: string
  inputBinding:
    position: 1
- id: sw
  doc: perc perc perc  query   position in query   matching repeat      position in  repeat      rat
    hum
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RepeatMasker
