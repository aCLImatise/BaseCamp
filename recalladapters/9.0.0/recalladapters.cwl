class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/recalladapters.cwl
inputs:
- id: prefix_output_filenames
  doc: Prefix of output filenames
  type: string
  inputBinding:
    prefix: -o
- id: sub_read_set
  doc: Input subreadset.xml
  type: string
  inputBinding:
    prefix: --subreadset
- id: nprocs
  doc: Number of threads for parallel ZMW processing
  type: long
  inputBinding:
    prefix: --nProcs
- id: number_threads_parallel_bam
  doc: Number of threads for parallel BAM compression, can only be set when not generating
    pbindex inline with --inlinePbi
  type: long
  inputBinding:
    prefix: -b
- id: inline_pbi
  doc: Generate pbindex inline with BAM writing
  type: boolean
  inputBinding:
    prefix: --inlinePbi
- id: silent
  doc: No progress output.
  type: boolean
  inputBinding:
    prefix: --silent
- id: min_adapter_score
  doc: Minimal score for an adapter
  type: long
  inputBinding:
    prefix: --minAdapterScore
- id: min_sub_length
  doc: 'Minimal subread length. Default: 50'
  type: long
  inputBinding:
    prefix: --minSubLength
- id: mins_nr
  doc: 'Minimal SNR across channels. Default: 3.75'
  type: double
  inputBinding:
    prefix: --minSnr
- id: whitelist_z_mw_num
  doc: Only process given ZMW NUMBERs
  type: string
  inputBinding:
    prefix: --whitelistZmwNum
outputs: []
cwlVersion: v1.1
baseCommand:
- recalladapters
