class: CommandLineTool
id: bam_count_reads.py.cwl
inputs:
- id: bam
  doc: 'Input file (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: a
  doc: Minimum mapping quality (0).
  type: long
  inputBinding:
    prefix: -a
- id: f
  doc: Input format (BAM).
  type: string
  inputBinding:
    prefix: -f
- id: z
  doc: Reference fasta. GC content and length columns are added if present (None).
  type: string
  inputBinding:
    prefix: -z
- id: k
  doc: Include word frequencies of specifed length in output (None).
  type: string
  inputBinding:
    prefix: -k
- id: g
  doc: Include mean GC content of reads mapped to each reference (False).
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: Save pickled results in this file (None).
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: Save results in tsv format in this file (bam_count_reads.tsv).
  type: string
  inputBinding:
    prefix: -t
- id: q
  doc: Be quiet and do not print progress bar (False).
  type: boolean
  inputBinding:
    prefix: -Q
- id: r
  doc: Count reads from SAM stream in stdin. Only read count fields are written. Header
    required! (False).
  type: boolean
  inputBinding:
    prefix: -R
- id: f
  doc: Yield counts after every -Fth mapped record when doing online counting (100).
  type: string
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_count_reads.py
