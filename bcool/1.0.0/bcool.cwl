class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bcool.cwl
inputs:
- id: mandatory_input_fasta
  doc: (MANDATORY) input fasta read files. Several read files must be concatenated
  type: string
  inputBinding:
    prefix: -u
- id: path_store_results
  doc: Path to store the results (Default = current directory)
  type: string
  inputBinding:
    prefix: -o
- id: number_cores_used
  doc: Number of cores used (Default = 1)
  type: string
  inputBinding:
    prefix: -t
- id: kmer_size_default
  doc: k-mer size (Default = AUTO)
  type: string
  inputBinding:
    prefix: -k
- id: kmers_present_less
  doc: k-mers present strictly less than this number of times in the dataset will
    be discarded (Default = 2)
  type: long
  inputBinding:
    prefix: -s
- id: unitig_coverage_cleaning
  doc: Unitig Coverage for cleaning (Default = AUTO)
  type: string
  inputBinding:
    prefix: -S
- id: advanced_maximum_number
  doc: (ADVANCED) Maximum number of corrected bases (Default = 10)
  type: string
  inputBinding:
    prefix: -m
- id: advanced_index_one
  doc: (ADVANCED) index one out of i anchors to reduce memory consumption (Default
    = 1)
  type: string
  inputBinding:
    prefix: -i
- id: advanced_maximum_occurence
  doc: (ADVANCED) Maximum occurence of an anchor (Default = 1), better correction
    for repetitive genome but slower
  type: long
  inputBinding:
    prefix: -n
- id: advanced_print_command
  doc: (ADVANCED) Print command lines
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bcool
