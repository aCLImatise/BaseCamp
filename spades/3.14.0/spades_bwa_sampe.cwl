class: CommandLineTool
id: ../../../spades_bwa_sampe.cwl
inputs:
- id: maximum_insert_size
  doc: maximum insert size [500]
  type: long
  inputBinding:
    prefix: -a
- id: maximum_occurrences_one
  doc: maximum occurrences for one end [100000]
  type: long
  inputBinding:
    prefix: -o
- id: maximum_hits_output_paired
  doc: maximum hits to output for paired reads [3]
  type: long
  inputBinding:
    prefix: -n
- id: maximum_hits_output_discordant
  doc: maximum hits to output for discordant pairs [10]
  type: long
  inputBinding:
    prefix: -N
- id: prior_chimeric_rate
  doc: prior of chimeric rate (lower bound) [1.0e-05]
  type: double
  inputBinding:
    prefix: -c
- id: sam_file_output
  doc: sam file to output results to [stdout]
  type: File
  inputBinding:
    prefix: -f
- id: read_group_line
  doc: read group header line such as `@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -r
- id: preload_index_memory
  doc: preload index into memory (for base-space reads only)
  type: boolean
  inputBinding:
    prefix: -P
- id: disable_smithwaterman_unmapped
  doc: disable Smith-Waterman for the unmapped mate
  type: boolean
  inputBinding:
    prefix: -s
- id: disable_insert_size
  doc: disable insert size estimate (force -s)
  type: boolean
  inputBinding:
    prefix: -A
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sampe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_one_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_two_do_tsai
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-bwa
- sampe
