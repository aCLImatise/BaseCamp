class: CommandLineTool
id: ../../../pandaseq.cwl
inputs:
- id: input_fastq_file_containing_forward
  doc: Input FASTQ file containing forward reads.
  type: string
  inputBinding:
    prefix: -f
- id: output_log_text
  doc: Output log to a text file.
  type: string
  inputBinding:
    prefix: -g
- id: input_fastq_file_containing_barcodeindex
  doc: Input FASTQ file containing separate barcode/index reads.
  type: string
  inputBinding:
    prefix: -i
- id: input_files_bzipped
  doc: Input files are bzipped. (Deprecated.)
  type: boolean
  inputBinding:
    prefix: -j
- id: number_kmers_table
  doc: The number of k-mers in the table.
  type: string
  inputBinding:
    prefix: -k
- id: minimum_length_sequence
  doc: Minimum length for a sequence.
  type: long
  inputBinding:
    prefix: -l
- id: minumum_overlap_region
  doc: Minumum overlap region length for a sequence.
  type: long
  inputBinding:
    prefix: -o
- id: forward_primer_sequence
  doc: Forward primer sequence or number of bases to be removed.
  type: string
  inputBinding:
    prefix: -p
- id: reverse_primer_sequence
  doc: Reverse primer sequence or number of bases to be removed.
  type: string
  inputBinding:
    prefix: -q
- id: input_fastq_file_containing_reads
  doc: Input FASTQ file containing reverse reads.
  type: string
  inputBinding:
    prefix: -r
- id: minimum_probability_sequence
  doc: The minimum probability that a sequence must have to assemble and, if used,
    match a primer.
  type: string
  inputBinding:
    prefix: -t
- id: file_write_pairs
  doc: File to write unalignable read pairs.
  type: string
  inputBinding:
    prefix: -u
- id: show_version_exit
  doc: Show version and exit.
  type: boolean
  inputBinding:
    prefix: -v
- id: output_seqences_fasta
  doc: Output seqences to a FASTA (or FASTQ) file.
  type: string
  inputBinding:
    prefix: -w
- id: six
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-6'
outputs: []
cwlVersion: v1.1
baseCommand:
- pandaseq
