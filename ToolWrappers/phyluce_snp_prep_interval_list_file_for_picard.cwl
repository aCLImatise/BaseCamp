class: CommandLineTool
id: phyluce_snp_prep_interval_list_file_for_picard.cwl
inputs:
- id: in_bed
  doc: The BED file to filter.
  type: File
  inputBinding:
    prefix: --bed
- id: in_bam
  doc: The BED file to filter.
  type: File
  inputBinding:
    prefix: --bam
- id: in_output
  doc: The output BED file
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output BED file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_snp_prep_interval_list_file_for_picard
