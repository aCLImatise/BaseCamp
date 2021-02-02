class: CommandLineTool
id: nanoblaster.cwl
inputs:
- id: in_specify_one_parameters
  doc: ': To specify one of the Parameters: -C10, -C25, or -C50'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_specify_name_reference
  doc: ': To specify the name of Reference file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_specify_name_reads
  doc: ': To specify the name of Reads file'
  type: boolean
  inputBinding:
    prefix: -i
- id: in_specify_prefix_output
  doc: ': To specify the prefix of Output file'
  type: File
  inputBinding:
    prefix: -o
- id: in_specify_size_kmer
  doc: ': To specify the size of KMER'
  type: boolean
  inputBinding:
    prefix: -k
- id: in_specify_size_anchor
  doc: ': To specify the size of ANCHOR'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_specify_min_number
  doc: ': To specify the min number of Clusters'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_run_program_high
  doc: ': To run the program in high sensitive mode'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_specify_number_aligned
  doc: ': To specify the Number of reads to be aligned'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_specify_interval_length
  doc: ': To specify the interval (or Gap) length between KMERs'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_configure_using_index
  doc: ': To configure NanoBLASTer for less memory using Single index'
  type: boolean
  inputBinding:
    prefix: -X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_prefix_output
  doc: ': To specify the prefix of Output file'
  type: File
  outputBinding:
    glob: $(inputs.in_specify_prefix_output)
cwlVersion: v1.1
baseCommand:
- nanoblaster
