#!/usr/bin/env cwl-runner

baseCommand:
- convert-sam-for-rsem
class: CommandLineTool
cwlVersion: v1.0
id: convert-sam-for-rsem
inputs:
- doc: The output name for the converted file. 'convert-sam-for-rsem' will output
    a BAM with the name 'output_file_name.bam'.
  id: output_file_name
  inputBinding:
    position: 0
  type: string
- doc: '/--num-threads <int> Set the number of threads to be used for converting.
    (Default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: "Set the maximum allowable memory per thread. <string> represents the memory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  id: memory_per_thread
  inputBinding:
    prefix: --memory-per-thread
  type: string
