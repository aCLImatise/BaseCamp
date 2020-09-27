class: CommandLineTool
id: vcontact2_gene2genome.cwl
inputs:
- id: in_proteins
  doc: "-o FILENAME, --output FILENAME\n-s {VIRSorter,Prodigal-coords,Prodigal-FAA,MetaGeneMark,NCBICodingSequence,NCBIFasta},\
    \ --source-type {VIRSorter,Prodigal-coords,Prodigal-FAA,MetaGeneMark,NCBICodingSequence,NCBIFasta}\n\
    Select one of the options as an input source. MetaGeneMark can be either the nucleotide\
    \ or protein FASTA-formatted output.\n-k, --keep-descriptions\nThis will enable\
    \ taking the full description of sequences during MetaGeneMark parsing.\n-c, --compatibility\
    \   Adds compatibility for vContact1 headers.\n"
  type: File
  inputBinding:
    prefix: --proteins
- id: in_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcontact2_gene2genome
