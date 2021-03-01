class: CommandLineTool
id: bcool.cwl
inputs:
- id: in_mandatory_input_fasta
  doc: (MANDATORY) input fasta read files. Several read files must be concatenated
  type: string?
  inputBinding:
    prefix: -u
- id: in_path_store_results
  doc: Path to store the results (Default = current directory)
  type: File?
  inputBinding:
    prefix: -o
- id: in_number_cores_used
  doc: Number of cores used (Default = 1)
  type: long?
  inputBinding:
    prefix: -t
- id: in_kmer_size_auto
  doc: k-mer size (Default = AUTO)
  type: long?
  inputBinding:
    prefix: -k
- id: in_kmers_present_less
  doc: k-mers present strictly less than this number of times in the dataset will
    be discarded (Default = 2)
  type: long?
  inputBinding:
    prefix: -s
- id: in_unitig_coverage_auto
  doc: Unitig Coverage for cleaning (Default = AUTO)
  type: string?
  inputBinding:
    prefix: -S
- id: in_advanced_maximum_number
  doc: (ADVANCED) Maximum number of corrected bases (Default = 10)
  type: long?
  inputBinding:
    prefix: -m
- id: in_advanced_index_one
  doc: (ADVANCED) index one out of i anchors to reduce memory consumption (Default
    = 1)
  type: long?
  inputBinding:
    prefix: -i
- id: in_advanced_maximum_occurence
  doc: (ADVANCED) Maximum occurence of an anchor (Default = 1), better correction
    for repetitive genome but slower
  type: long?
  inputBinding:
    prefix: -n
- id: in_advanced_print_command
  doc: (ADVANCED) Print command lines
  type: string?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcool
