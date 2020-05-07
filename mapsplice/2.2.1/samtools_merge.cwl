class: CommandLineTool
id: samtools_merge.cwl
inputs:
- id: n
  doc: sort by read names
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: attach RG tag (inferred from file names)
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: uncompressed BAM output
  type: boolean
  inputBinding:
    prefix: -u
- id: r
  doc: merge file in the specified region STR [all]
  type: string
  inputBinding:
    prefix: -R
- id: h
  doc: copy the header in FILE to <out.bam> [in1.bam]
  type: File
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- merge
