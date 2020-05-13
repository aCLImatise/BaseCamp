class: CommandLineTool
id: gbrowseold2gff3.pl.cwl
inputs:
- id: hints
  doc: convert gff format for intron hints to gff3
  type: string
  inputBinding:
    position: 0
- id: source
  doc: fill this into the second column
  type: string
  inputBinding:
    position: 1
- id: chromosome_1
  doc: AUGUSTUS      gene    12656   14013   0.05    +       .       ID=g1
  type: string
  inputBinding:
    position: 0
- id: chromosome_1
  doc: AUGUSTUS      mRNA    12656   14013   0.05    +       .       ID=g1.t1;Parent=g1
  type: string
  inputBinding:
    position: 1
- id: chromosome_1
  doc: AUGUSTUS      five_prime_utr  12656   12867   0.21    +       .       Parent=g1.t1
  type: string
  inputBinding:
    position: 2
- id: chromosome_1
  doc: AUGUSTUS      start_codon     12868   12870   .       +       0       Parent=g1.t1
  type: string
  inputBinding:
    position: 3
- id: chromosome_1
  doc: AUGUSTUS      intron  12994   13248   0.99    +       .       Parent=g1.t1
  type: string
  inputBinding:
    position: 4
- id: chromosome_1
  doc: AUGUSTUS      CDS     12868   12993   0.85    +       0       Parent=g1.t1
  type: string
  inputBinding:
    position: 5
- id: chromosome_1
  doc: AUGUSTUS      CDS     13249   13479   0.99    +       0       Parent=g1.t1
  type: string
  inputBinding:
    position: 6
- id: chromosome_1
  doc: AUGUSTUS      stop_codon      13477   13479   .       +       0       Parent=g1.t1
  type: string
  inputBinding:
    position: 7
- id: chromosome_1
  doc: AUGUSTUS      three_prime_utr 13480   14013   0.22    +       .       Parent=g1.t1
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- gbrowseold2gff3.pl
