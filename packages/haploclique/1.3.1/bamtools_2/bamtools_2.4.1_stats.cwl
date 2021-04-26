class: CommandLineTool
id: bamtools_2.4.1_stats.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File?
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File?
  inputBinding:
    prefix: -list
- id: in_insert
  doc: summarize insert size data
  type: boolean?
  inputBinding:
    prefix: -insert
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- stats
