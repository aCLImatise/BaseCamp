class: CommandLineTool
id: fast_circ.py.cwl
inputs:
- id: parse
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fusion
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref
  doc: Gene annotation.
  type: string
  inputBinding:
    prefix: --ref
- id: genome
  doc: Genome FASTA file.
  type: string
  inputBinding:
    prefix: --genome
- id: gtf
  doc: Annotation GTF file.
  type: string
  inputBinding:
    prefix: --gtf
- id: t
  doc: Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).
  type: string
  inputBinding:
    prefix: -t
- id: pe
  doc: Parse paired-end alignment file (only for TopHat-Fusion).
  type: boolean
  inputBinding:
    prefix: --pe
- id: fast_q
  doc: Input file.
  type: string
  inputBinding:
    prefix: --fastq
- id: pa_plus
  doc: TopHat mapping directory for p(A)+ RNA-seq.
  type: string
  inputBinding:
    prefix: --pAplus
- id: thread
  doc: 'Running threads. [default: 10]'
  type: string
  inputBinding:
    prefix: --thread
- id: output
  doc: 'Output directory. [default: .]'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fast_circ.py
