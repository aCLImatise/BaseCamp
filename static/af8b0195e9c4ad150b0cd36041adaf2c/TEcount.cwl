class: CommandLineTool
id: TEcount.cwl
inputs:
- id: bam
  doc: An RNAseq BAM file.
  type: string
  inputBinding:
    prefix: --BAM
- id: gtf
  doc: GTF file for gene annotations
  type: string
  inputBinding:
    prefix: --GTF
- id: te
  doc: GTF file for transposable element annotations
  type: string
  inputBinding:
    prefix: --TE
- id: format
  doc: 'file format Input file format: BAM or SAM. DEFAULT: BAM'
  type: string
  inputBinding:
    prefix: --format
- id: stranded
  doc: 'Is this a stranded library? (yes, no, or reverse). DEFAULT: yes.'
  type: string
  inputBinding:
    prefix: --stranded
- id: mode
  doc: 'counting mode How to count TE: uniq (unique mappers only), or multi (distribute
    among all alignments). DEFAULT: multi'
  type: string
  inputBinding:
    prefix: --mode
- id: project
  doc: 'Name of this project. DEFAULT: TEcount_out'
  type: string
  inputBinding:
    prefix: --project
- id: sort_by_pos
  doc: Alignment file is sorted by chromosome position.
  type: boolean
  inputBinding:
    prefix: --sortByPos
- id: iteration
  doc: 'number of iteration to run the optimization. DEFAULT: 100'
  type: string
  inputBinding:
    prefix: --iteration
- id: max_l
  doc: maximum fragment length. DEFAULT:500
  type: long
  inputBinding:
    prefix: --maxL
- id: min_l
  doc: minimum fragment length. DEFAULT:0
  type: long
  inputBinding:
    prefix: --minL
- id: fragment_length
  doc: 'average fragment length for single end reads. For paired-end, estimated from
    the input alignment file. DEFAULT: for paired-end, estimate from the input alignment
    file; for single-end, ignored by default.'
  type: string
  inputBinding:
    prefix: --fragmentLength
- id: verbose
  doc: 'Set verbose level. 0: only show critical message, 1: show additional warning
    message, 2: show process information, 3: show debug messages. DEFAULT:2'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- TEcount
