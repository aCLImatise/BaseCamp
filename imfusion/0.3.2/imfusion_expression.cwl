class: CommandLineTool
id: ../../../imfusion_expression.cwl
inputs:
- id: in_reference
  doc: '[--output OUTPUT] [--paired]'
  type: string
  inputBinding:
    prefix: --reference
- id: in_sample_dir
  doc: "Path to sample directory (typically the output of\nimfusion-insertions)."
  type: File
  inputBinding:
    prefix: --sample_dir
- id: in_output
  doc: ''
  type: string
  inputBinding:
    prefix: --output
- id: in_paired
  doc: "Generate counts by counting fragments instead of reads\n(for paired-end data)."
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_stranded
  doc: "Strandedness of the RNA-seq data.\n"
  type: string
  inputBinding:
    prefix: --stranded
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample_dir
  doc: "Path to sample directory (typically the output of\nimfusion-insertions)."
  type: File
  outputBinding:
    glob: $(inputs.in_sample_dir)
cwlVersion: v1.1
baseCommand:
- imfusion-expression
