class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filterout_bam.cwl
inputs:
- id: write_output_bam_compressed
  doc: Write output BAM compressed [uncompressed]
  type: boolean
  inputBinding:
    prefix: -c
- id: select_discard_alignment
  doc: Select and discard alignment records matching FLAGS
  type: string
  inputBinding:
    prefix: -f
- id: write_output_bam_file
  doc: Write output BAM file to FILE rather than standard output
  type: File
  inputBinding:
    prefix: -o
- id: select_discard_records_mapping
  doc: Select and discard records with mapping quality less than NUM
  type: string
  inputBinding:
    prefix: -q
- id: original_mapping_quality
  doc: with original mapping quality (ZM:i) less than NUM
  type: string[]
  inputBinding:
    prefix: -Q
- id: select_discard_records_more
  doc: Select and discard records with more than NUM suboptimal hits
  type: string
  inputBinding:
    prefix: -s
- id: more_num_original
  doc: with more than NUM original suboptimal hits (Z1:i)
  type: string[]
  inputBinding:
    prefix: -S
- id: display_file_information
  doc: Display file information and statistics
  type: boolean
  inputBinding:
    prefix: -v
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- filterout-bam
