class: CommandLineTool
id: convert_sam_for_rsem.cwl
inputs:
- id: in_num_threads
  doc: 'Set the number of threads to be used for converting. (Default: 1)'
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_memory_per_thread
  doc: "Set the maximum allowable memory per thread. <string> represents the\nmemory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  type: string?
  inputBinding:
    prefix: --memory-per-thread
- id: in_output_file_name
  doc: "The output name for the converted file. 'convert-sam-for-rsem' will\noutput\
    \ a BAM with the name 'output_file_name.bam'."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- convert-sam-for-rsem
