class: CommandLineTool
id: iu_interleave_fastq.cwl
inputs:
- id: in_one
  doc: "FASTQ, --input-r1 R1 FASTQ\nRead 1"
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: "FASTQ, --input-r2 R2 FASTQ\nRead 1"
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_output_file_path
  doc: "Interleaved FASTQ file path (give it a good name).\n"
  type: File?
  inputBinding:
    prefix: --output-file-path
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_path
  doc: "Interleaved FASTQ file path (give it a good name).\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.10--py_0
cwlVersion: v1.1
baseCommand:
- iu-interleave-fastq
