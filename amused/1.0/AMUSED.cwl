class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/AMUSED.cwl
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
- id: bp
  doc: = pseudocount to add to background [default=0.5]
  type: string
  inputBinding:
    prefix: -bp
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
- id: minimum_absolute_subzscore
  doc: = minimum absolute Sub-Z-score [default = 0; print all]
  type: string
  inputBinding:
    prefix: -z
- id: number_cpu_use
  doc: = number of CPU threads to use [default=1]
  type: string
  inputBinding:
    prefix: -t
- id: one_p
  doc: '= sequences not in fasta format: each line is a full sequence'
  type: boolean
  inputBinding:
    prefix: -1p
- id: ng
  doc: = no inserting gaps
  type: boolean
  inputBinding:
    prefix: -ng
- id: nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean
  inputBinding:
    prefix: -nu
- id: ds
  doc: = double stranded (reverse complement sequences too)
  type: boolean
  inputBinding:
    prefix: -ds
- id: ns
  doc: = don't sort
  type: boolean
  inputBinding:
    prefix: -ns
- id: do
  doc: '= descriptive output: lots of intermediate values also output (but many columns)'
  type: boolean
  inputBinding:
    prefix: -do
- id: bc
  doc: = add lines to output for base content
  type: boolean
  inputBinding:
    prefix: -bc
- id: n_sz
  doc: = don't calculate super Zs
  type: boolean
  inputBinding:
    prefix: -nsz
outputs: []
cwlVersion: v1.1
baseCommand:
- AMUSED
