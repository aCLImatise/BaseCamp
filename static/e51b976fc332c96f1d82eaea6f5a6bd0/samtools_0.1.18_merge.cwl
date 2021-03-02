class: CommandLineTool
id: samtools_0.1.18_merge.cwl
inputs:
- id: in_sort_read_names
  doc: sort by read names
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_attach_tag_inferred
  doc: attach RG tag (inferred from file names)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_overwrite_output_bam
  doc: overwrite the output BAM if exist
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_compress_level
  doc: compress level 1
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_merge_file_str
  doc: merge file in the specified region STR [all]
  type: File?
  inputBinding:
    prefix: -R
- id: in_copy_header_outbam
  doc: copy the header in FILE to <out.bam> [in1.bam]
  type: File?
  inputBinding:
    prefix: -h
- id: in_nr
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -nr
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_in_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_copy_header_outbam
  doc: copy the header in FILE to <out.bam> [in1.bam]
  type: File?
  outputBinding:
    glob: $(inputs.in_copy_header_outbam)
hints: []
cwlVersion: v1.1
baseCommand:
- samtools_0.1.18
- merge
