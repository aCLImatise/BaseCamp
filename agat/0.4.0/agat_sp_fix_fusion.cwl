class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_fix_fusion.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: boolean
  inputBinding:
    prefix: -gff
- id: fast_a
  doc: Input fasta file.
  type: string
  inputBinding:
    prefix: --fasta
- id: codon
  doc: Codon table to use. [default 1]
  type: string
  inputBinding:
    prefix: --codon
- id: threshold
  doc: This is the minimum length of new protein predicted that will be taken in account.
    By default this value is 100 AA.
  type: string
  inputBinding:
    prefix: --threshold
- id: stranded
  doc: By default we predict protein in UTR3 and UTR5 and in both direction. The fusion
    assumed can be between gene in same direction and in opposite direction. If RNAseq
    data used during the annotation was stranded, only fusion of close genes oriented
    in same direction are expected. In that case this option should be activated.
    When activated, we will try to predict protein in UTR3 and UTR5 only in the same
    orientation than the gene investigated.
  type: string
  inputBinding:
    prefix: --stranded
- id: verbose
  doc: Output verbose information.
  type: string
  inputBinding:
    prefix: --verbose
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_fix_fusion.pl
