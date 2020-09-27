class: CommandLineTool
id: recalladapters.cwl
inputs:
- id: in_prefix_output_filenames
  doc: Prefix of output filenames
  type: string
  inputBinding:
    prefix: -o
- id: in_sub_read_set
  doc: Input subreadset.xml
  type: string
  inputBinding:
    prefix: --subreadset
- id: in_nprocs
  doc: Number of threads for parallel ZMW processing
  type: long
  inputBinding:
    prefix: --nProcs
- id: in_number_threads_parallel_bam
  doc: "Number of threads for parallel BAM compression, can only\nbe set when not\
    \ generating pbindex inline with --inlinePbi"
  type: long
  inputBinding:
    prefix: -b
- id: in_inline_pbi
  doc: Generate pbindex inline with BAM writing
  type: boolean
  inputBinding:
    prefix: --inlinePbi
- id: in_silent
  doc: No progress output.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_disable_adapter_finding
  doc: "--adapters=adapterSequences.fasta\n--globalAlnFlanking\n--flankLength=INT\n\
    --minSoftAccuracy=FLOAT\n--minHardAccuracy=FLOAT\n--minFlankingScore=FLOAT\n--disableAdapterCorrection\n\
    --adpqc"
  type: boolean
  inputBinding:
    prefix: --disableAdapterFinding
- id: in_min_adapter_score
  doc: Minimal score for an adapter
  type: long
  inputBinding:
    prefix: --minAdapterScore
- id: in_min_sub_length
  doc: 'Minimal subread length. Default: 50'
  type: long
  inputBinding:
    prefix: --minSubLength
- id: in_mins_nr
  doc: 'Minimal SNR across channels. Default: 3.75'
  type: double
  inputBinding:
    prefix: --minSnr
- id: in_whitelist_z_mw_num
  doc: Only process given ZMW NUMBERs
  type: string
  inputBinding:
    prefix: --whitelistZmwNum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- recalladapters
