class: CommandLineTool
id: ../../../wtpre.cwl
inputs:
- id: output_processed_reads
  doc: Output of processed reads, [-]
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite_output
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: keep_subreads_one
  doc: 'Keep all subreads in a well, default: the longest one'
  type: boolean
  inputBinding:
    prefix: -L
- id: jack_knife_read
  doc: Jack knife of read length, [0]
  type: long
  inputBinding:
    prefix: -J
- id: clip_c_bases
  doc: Clip <-c> bases at both ends, [0]
  type: long
  inputBinding:
    prefix: -c
- id: change_read_name
  doc: Change the read name into {"%s%012d", <-p>}, [pb]
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- wtpre
