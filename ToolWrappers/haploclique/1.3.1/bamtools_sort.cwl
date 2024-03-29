class: CommandLineTool
id: bamtools_sort.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: the output BAM file [stdout]
  type: File?
  inputBinding:
    prefix: -out
- id: in_by_name
  doc: sort by alignment name
  type: boolean?
  inputBinding:
    prefix: -byname
- id: in_max_number_alignments
  doc: "max number of alignments per\ntempfile [500000]"
  type: long?
  inputBinding:
    prefix: -n
- id: in_mem
  doc: max memory to use [1024]
  type: long?
  inputBinding:
    prefix: -mem
- id: in_sort_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools
- sort
