class: CommandLineTool
id: AMUSED.cwl
inputs:
- id: in__query_sequences
  doc: = query sequences
  type: string
  inputBinding:
    prefix: -q
- id: in_compare_seqs_background
  doc: = compare seqs to these background seqs
  type: string
  inputBinding:
    prefix: -b
- id: in_bp
  doc: = pseudocount to add to background [default=0.5]
  type: double
  inputBinding:
    prefix: -bp
- id: in__output_file
  doc: = output file
  type: File
  inputBinding:
    prefix: -o
- id: in_max_nmer_consider
  doc: = max n-mer to consider [default=8]
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_absolute_subzscore
  doc: = minimum absolute Sub-Z-score [default = 0; print all]
  type: long
  inputBinding:
    prefix: -z
- id: in_number_cpu_use
  doc: = number of CPU threads to use [default=1]
  type: long
  inputBinding:
    prefix: -t
- id: in_one_p
  doc: '= sequences not in fasta format: each line is a full sequence'
  type: boolean
  inputBinding:
    prefix: -1p
- id: in_ng
  doc: = no inserting gaps
  type: boolean
  inputBinding:
    prefix: -ng
- id: in_nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean
  inputBinding:
    prefix: -nu
- id: in_ds
  doc: = double stranded (reverse complement sequences too)
  type: boolean
  inputBinding:
    prefix: -ds
- id: in_ns
  doc: = don't sort
  type: boolean
  inputBinding:
    prefix: -ns
- id: in_do
  doc: '= descriptive output: lots of intermediate values also output (but many columns)'
  type: boolean
  inputBinding:
    prefix: -do
- id: in_bc
  doc: = add lines to output for base content
  type: boolean
  inputBinding:
    prefix: -bc
- id: in_n_sz
  doc: = don't calculate super Zs
  type: boolean
  inputBinding:
    prefix: -nsz
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: = output file
  type: File
  outputBinding:
    glob: $(inputs.in__output_file)
cwlVersion: v1.1
baseCommand:
- AMUSED
