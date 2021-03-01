class: CommandLineTool
id: phyluce_utilities_filter_bed_by_fasta.cwl
inputs:
- id: in_bed
  doc: The BED file to filter.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_fast_a
  doc: The FASTA file to use as a filter.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_output
  doc: The output BED file
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output BED file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_filter_bed_by_fasta
