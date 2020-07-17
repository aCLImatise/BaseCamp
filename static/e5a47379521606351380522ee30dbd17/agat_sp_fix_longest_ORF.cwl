class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_fix_longest_ORF.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: --gff
- id: fast_a
  doc: Imput fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. [default 1]
  type: string
  inputBinding:
    prefix: --codon
- id: model
  doc: "Kind of ORF Model you want to fix. By default all are used. To select specific\
    \ models writte e.g --model 1,4 Model1 = The original ORF is part of the new ORF;\
    \ the new ORF is longer Model2 = The original ORF and the new one are different;\
    \ the new one is longer, they do not overlap each other. Model3 = The original\
    \ ORF and the new one are different; the new one is longer, they overlap each\
    \ other. Model4 = The new ORF is shorter due to the presence of stop codon in\
    \ the original ORF. Model5 = The new ORF is shorter but the original ORF has not\
    \ premature stop codon. The shorter predicted ORF can be due to the fact that\
    \ the original ORF does not start by a start codon, while we force here the prediction\
    \ to have a start codon. A ORF wihtout start can be the fact of an incomplete\
    \ or fragmented ORF: annotation tool didn't predict the start because: * the start\
    \ region is NNNN * the start region is XXXX * correct nucleotides but prediction\
    \ tool did not annotate this part (e.g incomplete evidence in evidence-based prediction)\
    \ Model6 = The ORF is same size but not correct frame (+1 or +2 bp gives a frame\
    \ shift)."
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
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: verbose_mode_default
  doc: verbose mode. Default off. -v 1 minimum verbosity, -v 3 maximum verbosity
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_longest_ORF.pl
