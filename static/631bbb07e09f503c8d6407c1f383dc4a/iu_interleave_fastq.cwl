class: CommandLineTool
id: iu_interleave_fastq.cwl
inputs:
- id: output_file_path
  doc: Interleaved FASTQ file path (give it a good name).
  type: string
  inputBinding:
    prefix: --output-file-path
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-interleave-fastq
