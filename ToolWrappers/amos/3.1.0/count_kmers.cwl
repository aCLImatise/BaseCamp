class: CommandLineTool
id: count_kmers.cwl
inputs:
- id: in_multifasta_file_count
  doc: multifasta file to count
  type: File
  inputBinding:
    prefix: -f
- id: in_bank_reads_count
  doc: Bank of reads to count
  type: string
  inputBinding:
    prefix: -r
- id: in_bank_contigs_count
  doc: Bank of contigs to count
  type: string
  inputBinding:
    prefix: -c
- id: in_report_normalized_counts
  doc: Report normalized counts (readmercount/contigmercount)
  type: string
  inputBinding:
    prefix: -n
- id: in_length_of_kmer
  doc: Length of kmer
  type: long
  inputBinding:
    prefix: -k
- id: in_minimum_count_report
  doc: 'Minimum count to report (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: in_only_count_strand
  doc: Only count the forward strand
  type: boolean
  inputBinding:
    prefix: -F
- id: in_print_using_count
  doc: 'Print using simple nmer count format: mer count'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_just_print_statistics
  doc: Just print statistics on unique mers
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- count-kmers
