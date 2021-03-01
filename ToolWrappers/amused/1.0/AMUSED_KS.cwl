class: CommandLineTool
id: AMUSED_KS.cwl
inputs:
- id: in__query_sequences
  doc: = query sequences
  type: string?
  inputBinding:
    prefix: -q
- id: in_compare_seqs_background
  doc: = compare seqs to these background seqs
  type: string?
  inputBinding:
    prefix: -b
- id: in__output_file
  doc: = output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_max_nmer_consider
  doc: = max n-mer to consider [default=8]
  type: long?
  inputBinding:
    prefix: -s
- id: in_smooth_data_how
  doc: = smooth data over how many bases to generate expected distribution for one-sample
    KS test (when no background set is included) [default=5]
  type: long?
  inputBinding:
    prefix: -m
- id: in_number_cpu_use
  doc: = number of CPU threads to use [default=1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_ds
  doc: = double stranded (reverse complement sequences too)
  type: boolean?
  inputBinding:
    prefix: -ds
- id: in_one_p
  doc: '= sequences not in fasta format: each line is a full sequence'
  type: boolean?
  inputBinding:
    prefix: -1p
- id: in_nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean?
  inputBinding:
    prefix: -nu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: = output file
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- AMUSED-KS
