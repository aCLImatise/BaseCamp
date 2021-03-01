class: CommandLineTool
id: dwgsim_eval.cwl
inputs:
- id: in_int_split_mapping
  doc: "INT     split by [0]:\n0: by mapping quality\n1: by alignment score\n2: by\
    \ suboptimal alignment score\n3: by alignment score - suboptimal alignment score"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_alignments_bwa_solid
  doc: alignments are from BWA (SOLiD only) [False]
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_color_space_alignments
  doc: color space alignments [False]
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_int_divide_score
  doc: INT     divide quality/alignment score by this factor [1]
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_gap_
  doc: gap "wiggle" [5]
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_consecutive_alignments_end
  doc: consecutive alignments with the same name (and end for multi-ends) should be
    treated as multi-mapped reads [False]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_number_raw
  doc: INT     number of raw input paired-end reads (otherwise, inferred from all
    SAM records present) [0]
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_int_consider_this
  doc: INT     consider only alignments with this mapping quality or greater [0]
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_input_contains_end
  doc: input contains only single end reads [False]
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_input_is_sam
  doc: input is SAM [False]
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_print_incorrect_alignments
  doc: print incorrect alignments [False]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_the_specified_snps
  doc: INT     consider only alignments with the number of specified SNPs [-1]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_the_specified_errors
  doc: INT     consider only alignments with the number of specified errors [-1]
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_consider_only_alignments
  doc: consider only alignments with indels [False]
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_string_read_prefix
  doc: STRING  a read prefix that was prepended to each read name [not using]
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_in_dots_am_slash_in_dot_bam
  doc: ''
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
- dwgsim_eval
