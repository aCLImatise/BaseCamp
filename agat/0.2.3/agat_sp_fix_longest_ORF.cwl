class: CommandLineTool
id: agat_sp_fix_longest_ORF.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: fast_a
  doc: Genome fasta file. The name of the fasta file containing the genome to work
    with.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. 0 By default.
  type: string
  inputBinding:
    prefix: --codon
- id: model
  doc: "Kind of ORF fix Model you want. By default all are used. To define specific\
    \ model writte: --model 1,4 Model1 = sequence original is part of new prediction;\
    \ the predicted one is longest Model2 = sequence original predicted are different;\
    \ the predicted one is longest, they don't overlap each other. Model3 = original\
    \ protein and predicted one are different; the predicted one is longest, they\
    \ overlap each other. Model4 = The prediction is shorter... /!\\ Model5 = The\
    \ prediction is shorter... /!\\ Model6 = The prediction is same size but not correct\
    \ frame (+1 or +2 bp gives frame shift)."
  type: string
  inputBinding:
    prefix: --model
- id: split
  doc: "This option is usefull for Model2. Indeed when the prediction is non overlapping\
    \ the original cds, it is possible to split the gene into two different genes.\
    \ By default we don't split it. We keep the longest. If you want to split it type:\
    \ -s"
  type: string
  inputBinding:
    prefix: --split
- id: o
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: v
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_longest_ORF.pl
