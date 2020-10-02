class: CommandLineTool
id: filterout_bam.cwl
inputs:
- id: in_write_bam_compressed
  doc: Write output BAM compressed [uncompressed]
  type: boolean
  inputBinding:
    prefix: -c
- id: in_select_discard_alignment
  doc: Select and discard alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: in_write_bam_file
  doc: Write output BAM file to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: in_select_discard_records_mapping
  doc: Select and discard records with mapping quality less than NUM
  type: long
  inputBinding:
    prefix: -q
- id: in_original_mapping_quality
  doc: with original mapping quality (ZM:i) less than NUM
  type: string[]
  inputBinding:
    prefix: -Q
- id: in_select_discard_records_more
  doc: Select and discard records with more than NUM suboptimal hits
  type: long
  inputBinding:
    prefix: -s
- id: in_more_num_original
  doc: with more than NUM original suboptimal hits (Z1:i)
  type: string[]
  inputBinding:
    prefix: -S
- id: in_display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_bam_file
  doc: Write output BAM file to FILE rather than standard output
  type: File
  outputBinding:
    glob: $(inputs.in_write_bam_file)
cwlVersion: v1.1
baseCommand:
- filterout-bam
