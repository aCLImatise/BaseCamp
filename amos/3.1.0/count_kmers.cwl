class: CommandLineTool
id: count_kmers.cwl
inputs:
- id: f
  doc: multifasta file to count
  type: string
  inputBinding:
    prefix: -f
- id: r
  doc: Bank of reads to count
  type: string
  inputBinding:
    prefix: -r
- id: c
  doc: Bank of contigs to count
  type: string
  inputBinding:
    prefix: -c
- id: n
  doc: Report normalized counts (readmercount/contigmercount)
  type: string
  inputBinding:
    prefix: -n
- id: k
  doc: 'Length of kmer '
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: 'Minimum count to report (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: f
  doc: Only count the forward strand
  type: boolean
  inputBinding:
    prefix: -F
- id: s
  doc: 'Print using simple nmer count format: mer count'
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: Just print statistics on unique mers
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- count-kmers
