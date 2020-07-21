class: CommandLineTool
id: ../../../dwgsim_eval.cwl
inputs:
- id: int_split_mapping
  doc: 'INT     split by [0]: 0: by mapping quality 1: by alignment score 2: by suboptimal
    alignment score 3: by alignment score - suboptimal alignment score'
  type: boolean
  inputBinding:
    prefix: -a
- id: alignments_bwa_solid
  doc: alignments are from BWA (SOLiD only) [False]
  type: boolean
  inputBinding:
    prefix: -b
- id: color_space_alignments
  doc: color space alignments [False]
  type: boolean
  inputBinding:
    prefix: -c
- id: int_divide_score
  doc: INT     divide quality/alignment score by this factor [1]
  type: boolean
  inputBinding:
    prefix: -d
- id: gap_
  doc: gap "wiggle" [5]
  type: boolean
  inputBinding:
    prefix: -g
- id: consecutive_alignments_same
  doc: consecutive alignments with the same name (and end for multi-ends) should be
    treated as multi-mapped reads [False]
  type: boolean
  inputBinding:
    prefix: -m
- id: int_number_raw
  doc: INT     number of raw input paired-end reads (otherwise, inferred from all
    SAM records present) [0]
  type: boolean
  inputBinding:
    prefix: -n
- id: int_consider_this
  doc: INT     consider only alignments with this mapping quality or greater [0]
  type: boolean
  inputBinding:
    prefix: -q
- id: input_contains_reads
  doc: input contains only single end reads [False]
  type: boolean
  inputBinding:
    prefix: -z
- id: input_is_sam
  doc: input is SAM [False]
  type: boolean
  inputBinding:
    prefix: -S
- id: print_incorrect_alignments
  doc: print incorrect alignments [False]
  type: boolean
  inputBinding:
    prefix: -p
- id: the_specified_snps
  doc: INT     consider only alignments with the number of specified SNPs [-1]
  type: boolean
  inputBinding:
    prefix: -s
- id: the_specified_errors
  doc: INT     consider only alignments with the number of specified errors [-1]
  type: boolean
  inputBinding:
    prefix: -e
- id: consider_only_alignments
  doc: consider only alignments with indels [False]
  type: boolean
  inputBinding:
    prefix: -i
- id: string_read_prefix
  doc: STRING  a read prefix that was prepended to each read name [not using]
  type: boolean
  inputBinding:
    prefix: -P
- id: in_dots_am_slash_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dwgsim_eval
