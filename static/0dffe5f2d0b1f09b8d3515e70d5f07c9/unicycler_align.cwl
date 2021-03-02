class: CommandLineTool
id: unicycler_align.cwl
inputs:
- id: in_ref
  doc: FASTA file containing one or more reference
  type: File?
  inputBinding:
    prefix: --ref
- id: in_sam
  doc: SAM file of resulting alignments
  type: File?
  inputBinding:
    prefix: --sam
- id: in_contamination
  doc: FASTA file of known contamination in long reads
  type: File?
  inputBinding:
    prefix: --contamination
- id: in_scores
  doc: "Comma-delimited string of alignment scores: match,\nmismatch, gap open, gap\
    \ extend (default: 3,-6,-5,-2)"
  type: string?
  inputBinding:
    prefix: --scores
- id: in_low_score
  doc: "Score threshold - alignments below this are\nconsidered poor (default: set\
    \ threshold\nautomatically)"
  type: string?
  inputBinding:
    prefix: --low_score
- id: in_keep_bad
  doc: "Include alignments in the results even if they are\nbelow the low score threshold\
    \ (default: low-scoring\nalignments are discarded)"
  type: boolean?
  inputBinding:
    prefix: --keep_bad
- id: in_sensitivity
  doc: "A number from 0 (least sensitive) to 3 (most\nsensitive) (default: 0)"
  type: long?
  inputBinding:
    prefix: --sensitivity
- id: in_threads
  doc: "Number of threads used (default: number of CPUs, up\nto 8)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: 'Level of stdout information (0 to 4) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_min_len
  doc: "Minimum alignment length (bp) - exclude alignments\nshorter than this length\
    \ (default: 100)"
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_allowed_overlap
  doc: "Allow this much overlap between alignments in a\nsingle read (default: 100)\n"
  type: long?
  inputBinding:
    prefix: --allowed_overlap
- id: in_reads
  doc: ''
  type: string?
  inputBinding:
    prefix: --reads
- id: in_sequences
  doc: --reads READS           FASTQ or FASTA file of long reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- unicycler_align
