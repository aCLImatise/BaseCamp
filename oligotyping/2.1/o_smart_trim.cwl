class: CommandLineTool
id: o_smart_trim.cwl
inputs:
- id: min_percent
  doc: Even if there is only one read that is too short and therefore full of gap
    characters, the first location in the alignment file that *every* read has a base
    would have to match the length of that short read. With this percentage you can
    specify what is the percentage of reads you expect to pass while this trimming
    script tries to maximize the remaining read length after trimming. Default is
    95.00
  type: string
  inputBinding:
    prefix: --min-percent
- id: from_end
  doc: Trim from the end of the file
  type: boolean
  inputBinding:
    prefix: --from-end
- id: from_start
  doc: Trim from the beginning of the file
  type: boolean
  inputBinding:
    prefix: --from-start
- id: output
  doc: Output file name
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- o-smart-trim
