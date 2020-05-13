class: CommandLineTool
id: convert_sam_for_rsem.cwl
inputs:
- id: output_file_name
  doc: The output name for the converted file. 'convert-sam-for-rsem' will output
    a BAM with the name 'output_file_name.bam'.
  type: string
  inputBinding:
    position: 0
- id: p
  doc: '/--num-threads <int> Set the number of threads to be used for converting.
    (Default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: memory_per_thread
  doc: "Set the maximum allowable memory per thread. <string> represents the memory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --memory-per-thread
outputs: []
cwlVersion: v1.1
baseCommand:
- convert-sam-for-rsem
