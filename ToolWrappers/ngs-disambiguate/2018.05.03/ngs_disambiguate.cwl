class: CommandLineTool
id: ngs_disambiguate.cwl
inputs:
- id: in_no_sort
  doc: (Deprecated option for backwards compatibility)
  type: boolean?
  inputBinding:
    prefix: --no-sort
- id: in_prefix
  doc: (required)  Sample ID or name used as prefix. Do not include .bam
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_output_dir
  doc: (required)  Output directory
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_aligner
  doc: Aligner option {tophat(default),hisat2,bwa,star}
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: (required)  Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- ngs_disambiguate
