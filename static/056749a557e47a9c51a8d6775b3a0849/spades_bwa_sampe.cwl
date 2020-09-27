class: CommandLineTool
id: spades_bwa_sampe.cwl
inputs:
- id: in_maximum_insert_size
  doc: maximum insert size [500]
  type: long
  inputBinding:
    prefix: -a
- id: in_maximum_occurrences_one
  doc: maximum occurrences for one end [100000]
  type: long
  inputBinding:
    prefix: -o
- id: in_maximum_hits_output_paired
  doc: maximum hits to output for paired reads [3]
  type: long
  inputBinding:
    prefix: -n
- id: in_maximum_hits_output_discordant
  doc: maximum hits to output for discordant pairs [10]
  type: long
  inputBinding:
    prefix: -N
- id: in_prior_chimeric_rate
  doc: prior of chimeric rate (lower bound) [1.0e-05]
  type: double
  inputBinding:
    prefix: -c
- id: in_sam_file_output
  doc: sam file to output results to [stdout]
  type: File
  inputBinding:
    prefix: -f
- id: in_read_group_line
  doc: read group header line such as `@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -r
- id: in_preload_index_memory
  doc: preload index into memory (for base-space reads only)
  type: boolean
  inputBinding:
    prefix: -P
- id: in_disable_smithwaterman_unmapped
  doc: disable Smith-Waterman for the unmapped mate
  type: boolean
  inputBinding:
    prefix: -s
- id: in_disable_insert_size
  doc: disable insert size estimate (force -s)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sampe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_one_do_tsai
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_in_two_do_tsai
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_in_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 5
- id: in_in_two_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sam_file_output
  doc: sam file to output results to [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_sam_file_output)
cwlVersion: v1.1
baseCommand:
- spades-bwa
- sampe
