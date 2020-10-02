class: CommandLineTool
id: 2csfastq_1csfastq.cwl
inputs:
- id: in_cs_fast_q_one
  doc: (string)        first csfastq file.
  type: boolean
  inputBinding:
    prefix: -csfastq1
- id: in_cs_fast_q_two
  doc: (string)        second csfastq file.
  type: boolean
  inputBinding:
    prefix: -csfastq2
- id: in_tags
  doc: (string,string)    Pair-end tags ( R3, F3, F5_BC ... )
  type: boolean
  inputBinding:
    prefix: -tags
- id: in_add_tags
  doc: (string,string)    add pair-end tags to not tagged read name
  type: boolean
  inputBinding:
    prefix: -add_tags
- id: in_trim_name
  doc: "By default the program trim the read name at the first space.\nUsing this\
    \ parameter the trimming is disabled"
  type: boolean
  inputBinding:
    prefix: -trim_name
- id: in_tone
  doc: (int)          it trims sequences at 3' end of the first read
  type: boolean
  inputBinding:
    prefix: -t1
- id: in_t_two
  doc: (int)          it trims sequences at 3' end of the second read
  type: boolean
  inputBinding:
    prefix: -t2
- id: in_int_minimum_mean
  doc: (int)          minimum mean average quality tolerated for paired_end sequences
  type: boolean
  inputBinding:
    prefix: -q
- id: in_len
  doc: (int)          minimum reads size after trimming
  type: boolean
  inputBinding:
    prefix: -len
- id: in_double_encoded
  doc: output double encoded reads [disabled]
  type: boolean
  inputBinding:
    prefix: -double-encoded
- id: in_fragment
  doc: 'fragment library: use only -csfastq2 to set the input csfastq file'
  type: boolean
  inputBinding:
    prefix: -fragment
- id: in_mate_pair
  doc: "Sequences coming from mate pair library (wiil be considered as\npaired-end\
    \ library [disabled]"
  type: boolean
  inputBinding:
    prefix: -mate-pair
- id: in_bs
  doc: base space reads as input [disabled]
  type: boolean
  inputBinding:
    prefix: -bs
- id: in_max_reads
  doc: (float)         Max number of reads to be considered before the program exits
  type: boolean
  inputBinding:
    prefix: -max_reads
- id: in_log
  doc: (string)        log file.
  type: boolean
  inputBinding:
    prefix: -log
- id: in_tag_two
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- 2csfastq_1csfastq
