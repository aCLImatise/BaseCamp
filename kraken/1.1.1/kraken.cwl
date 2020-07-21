class: CommandLineTool
id: ../../../kraken.cwl
inputs:
- id: db
  doc: 'Name for Kraken DB (default: none)'
  type: string
  inputBinding:
    prefix: --db
- id: threads
  doc: 'Number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: fast_a_input
  doc: Input is FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta-input
- id: fast_q_input
  doc: Input is FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq-input
- id: fast_q_output
  doc: Output in FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: gzip_compressed
  doc: Input is gzip compressed
  type: boolean
  inputBinding:
    prefix: --gzip-compressed
- id: bzip_two_compressed
  doc: Input is bzip2 compressed
  type: boolean
  inputBinding:
    prefix: --bzip2-compressed
- id: quick
  doc: Quick operation (use first hit or hits)
  type: boolean
  inputBinding:
    prefix: --quick
- id: min_hits
  doc: "In quick op., number of hits req'd for classification NOTE: this is ignored\
    \ if --quick is not specified"
  type: string
  inputBinding:
    prefix: --min-hits
- id: unclassified_out
  doc: Print unclassified sequences to filename
  type: File
  inputBinding:
    prefix: --unclassified-out
- id: classified_out
  doc: Print classified sequences to filename
  type: File
  inputBinding:
    prefix: --classified-out
- id: out_fmt
  doc: 'Format for [un]classified sequence output. supported  options are: {legacy,
    paired, interleaved}'
  type: string
  inputBinding:
    prefix: --out-fmt
- id: output
  doc: 'Print output to filename (default: stdout); "-" will suppress normal output'
  type: File
  inputBinding:
    prefix: --output
- id: only_classified_output
  doc: Print no Kraken output for unclassified sequences
  type: boolean
  inputBinding:
    prefix: --only-classified-output
- id: preload
  doc: Loads DB into memory before classification
  type: boolean
  inputBinding:
    prefix: --preload
- id: paired
  doc: The two filenames provided are paired-end reads
  type: boolean
  inputBinding:
    prefix: --paired
- id: check_names
  doc: Ensure each pair of reads have names that agree with each other; ignored if
    --paired is not specified
  type: boolean
  inputBinding:
    prefix: --check-names
outputs: []
cwlVersion: v1.1
baseCommand:
- kraken
