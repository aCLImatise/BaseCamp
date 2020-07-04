class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/funannotate_train.cwl
inputs:
- id: input
  doc: Genome multi-fasta file
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: Output folder name
  type: boolean
  inputBinding:
    prefix: --out
- id: left
  doc: Left/Forward FASTQ Illumina reads (R1)
  type: boolean
  inputBinding:
    prefix: --left
- id: right
  doc: Right/Reverse FASTQ Illumina reads (R2)
  type: boolean
  inputBinding:
    prefix: --right
- id: single
  doc: Single ended FASTQ reads
  type: boolean
  inputBinding:
    prefix: --single
- id: aligners
  doc: 'Aligners to use with PASA: Default: minimap2 blat [gmap]'
  type: boolean
  inputBinding:
    prefix: --aligners
- id: max_intron_len
  doc: 'Maximum intron length. Default: 3000'
  type: boolean
  inputBinding:
    prefix: --max_intronlen
- id: species
  doc: Species name, use quotes for binomial, e.g. "Aspergillus fumigatus"
  type: boolean
  inputBinding:
    prefix: --species
- id: strain
  doc: Strain name
  type: boolean
  inputBinding:
    prefix: --strain
- id: isolate
  doc: Isolate name
  type: boolean
  inputBinding:
    prefix: --isolate
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- train
