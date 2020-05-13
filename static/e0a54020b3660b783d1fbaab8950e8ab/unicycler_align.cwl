class: CommandLineTool
id: unicycler_align.cwl
inputs:
- id: ref
  doc: FASTA file containing one or more reference sequences
  type: string
  inputBinding:
    prefix: --ref
- id: reads
  doc: FASTQ or FASTA file of long reads
  type: string
  inputBinding:
    prefix: --reads
- id: sam
  doc: SAM file of resulting alignments
  type: string
  inputBinding:
    prefix: --sam
- id: contamination
  doc: FASTA file of known contamination in long reads
  type: string
  inputBinding:
    prefix: --contamination
- id: scores
  doc: 'Comma-delimited string of alignment scores: match, mismatch, gap open, gap
    extend (default: 3,-6,-5,-2)'
  type: string
  inputBinding:
    prefix: --scores
- id: low_score
  doc: 'Score threshold - alignments below this are considered poor (default: set
    threshold automatically)'
  type: string
  inputBinding:
    prefix: --low_score
- id: keep_bad
  doc: 'Include alignments in the results even if they are below the low score threshold
    (default: low-scoring alignments are discarded)'
  type: boolean
  inputBinding:
    prefix: --keep_bad
- id: sensitivity
  doc: 'A number from 0 (least sensitive) to 3 (most sensitive) (default: 0)'
  type: string
  inputBinding:
    prefix: --sensitivity
- id: threads
  doc: 'Number of threads used (default: number of CPUs, up to 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: verbosity
  doc: 'Level of stdout information (0 to 4) (default: 1)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: min_len
  doc: 'Minimum alignment length (bp) - exclude alignments shorter than this length
    (default: 100)'
  type: long
  inputBinding:
    prefix: --min_len
- id: allowed_overlap
  doc: 'Allow this much overlap between alignments in a single read (default: 100)'
  type: string
  inputBinding:
    prefix: --allowed_overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- unicycler_align
