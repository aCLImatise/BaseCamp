class: CommandLineTool
id: CIRCexplorer2_align.cwl
inputs:
- id: gtf
  doc: Annotation GTF file.
  type: string
  inputBinding:
    prefix: --gtf
- id: genome
  doc: Genome fasta file.
  type: string
  inputBinding:
    prefix: --genome
- id: bowtie1
  doc: Index files for Bowtie1 (used for TopHat-Fusion).
  type: string
  inputBinding:
    prefix: --bowtie1
- id: bowtie2
  doc: Index files for Bowtie2 (used for TopHat2).
  type: string
  inputBinding:
    prefix: --bowtie2
- id: thread
  doc: 'Running threads. [default: 10]'
  type: string
  inputBinding:
    prefix: --thread
- id: fast_q
  doc: Input file.
  type: string
  inputBinding:
    prefix: --fastq
- id: output
  doc: 'Output directory. [default: alignment]'
  type: string
  inputBinding:
    prefix: --output
- id: bed
  doc: 'Output file. [default: back_spliced_junction.bed]'
  type: string
  inputBinding:
    prefix: --bed
- id: bw
  doc: Create BigWig file.
  type: boolean
  inputBinding:
    prefix: --bw
- id: scale
  doc: Scale to HPB.
  type: boolean
  inputBinding:
    prefix: --scale
- id: skip_top_hat
  doc: Skip TopHat mapping.
  type: boolean
  inputBinding:
    prefix: --skip-tophat
- id: skip_top_hat_fusion
  doc: Skip TopHat-Fusion mapping.
  type: boolean
  inputBinding:
    prefix: --skip-tophat-fusion
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- align
