class: CommandLineTool
id: umi_mark_duplicates.cwl
inputs:
- id: in_file
  doc: the input bam file
  type: File?
  inputBinding:
    prefix: --file
- id: in_processes
  doc: number of processes
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: turn on debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_count
  doc: "Count the number of raw reads for each locus\n(determined by pairs)\n"
  type: boolean?
  inputBinding:
    prefix: --count
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- umi_mark_duplicates
