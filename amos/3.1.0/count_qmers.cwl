class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/count_qmers.cwl
inputs:
- id: multifasta_file_count
  doc: multifasta file to count
  type: string
  inputBinding:
    prefix: -f
- id: bank_reads_count
  doc: Bank of reads to count
  type: string
  inputBinding:
    prefix: -r
- id: bank_contigs_count
  doc: Bank of contigs to count
  type: string
  inputBinding:
    prefix: -c
- id: report_normalized_counts
  doc: Report normalized counts (readmercount/contigmercount)
  type: string
  inputBinding:
    prefix: -n
- id: length_of_kmer
  doc: 'Length of kmer '
  type: string
  inputBinding:
    prefix: -k
- id: minimum_count_report
  doc: 'Minimum count to report (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: print_using_count
  doc: 'Print using simple nmer count format: mer count'
  type: boolean
  inputBinding:
    prefix: -S
- id: gigabyte_limit_ram
  doc: Gigabyte limit on RAM. If limited, the output will contain redundancies
  type: string
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- count-qmers
