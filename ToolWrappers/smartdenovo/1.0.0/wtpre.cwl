class: CommandLineTool
id: wtpre.cwl
inputs:
- id: in_output_processed_reads
  doc: Output of processed reads, [-]
  type: string?
  inputBinding:
    prefix: -o
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  inputBinding:
    prefix: -f
- id: in_keep_subreads_one
  doc: 'Keep all subreads in a well, default: the longest one'
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_jack_knife_read
  doc: Jack knife of read length, [0]
  type: long?
  inputBinding:
    prefix: -J
- id: in_clip_bases_ends
  doc: Clip <-c> bases at both ends, [0]
  type: long?
  inputBinding:
    prefix: -c
- id: in_change_read_name
  doc: Change the read name into {"%s%012d", <-p>}, [pb]
  type: long?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
hints: []
cwlVersion: v1.1
baseCommand:
- wtpre
