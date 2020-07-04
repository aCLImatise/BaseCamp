class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/AMUSED_KS.cwl
inputs:
- id: _query_sequences
  doc: = query sequences
  type: string
  inputBinding:
    prefix: -q
- id: compare_seqs_background
  doc: = compare seqs to these background seqs
  type: string
  inputBinding:
    prefix: -b
- id: _output_file
  doc: = output file
  type: string
  inputBinding:
    prefix: -o
- id: max_nmer_consider
  doc: = max n-mer to consider [default=8]
  type: long
  inputBinding:
    prefix: -s
- id: smooth_data_how
  doc: = smooth data over how many bases to generate expected distribution for one-sample
    KS test (when no background set is included) [default=5]
  type: string
  inputBinding:
    prefix: -m
- id: number_cpu_use
  doc: = number of CPU threads to use [default=1]
  type: string
  inputBinding:
    prefix: -t
- id: ds
  doc: = double stranded (reverse complement sequences too)
  type: boolean
  inputBinding:
    prefix: -ds
- id: one_p
  doc: '= sequences not in fasta format: each line is a full sequence'
  type: boolean
  inputBinding:
    prefix: -1p
- id: nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean
  inputBinding:
    prefix: -nu
outputs: []
cwlVersion: v1.1
baseCommand:
- AMUSED-KS
