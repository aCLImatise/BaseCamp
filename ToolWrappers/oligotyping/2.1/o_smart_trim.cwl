class: CommandLineTool
id: o_smart_trim.cwl
inputs:
- id: in_min_percent
  doc: "Even if there is only one read that is too short and\ntherefore full of gap\
    \ characters, the first location\nin the alignment file that *every* read has\
    \ a base\nwould have to match the length of that short read.\nWith this percentage\
    \ you can specify what is the\npercentage of reads you expect to pass while this\n\
    trimming script tries to maximize the remaining read\nlength after trimming. Default\
    \ is 95.00"
  type: long
  inputBinding:
    prefix: --min-percent
- id: in_from_end
  doc: Trim from the end of the file
  type: boolean
  inputBinding:
    prefix: --from-end
- id: in_from_start
  doc: Trim from the beginning of the file
  type: boolean
  inputBinding:
    prefix: --from-start
- id: in_output
  doc: "Output file name\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- o-smart-trim
