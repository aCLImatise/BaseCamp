class: CommandLineTool
id: dsh_interleave_fastq.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_first_fast_q_file
  doc: '[class java.io.File]  first FASTQ input file [required]'
  type: boolean?
  inputBinding:
    prefix: --first-fastq-file
- id: in_second_fast_q_file
  doc: '[class java.io.File]  second FASTQ input file [required]'
  type: boolean?
  inputBinding:
    prefix: --second-fastq-file
- id: in_paired_file
  doc: '[class java.io.File]  output interleaved paired FASTQ file [required]'
  type: File?
  inputBinding:
    prefix: --paired-file
- id: in_unpaired_file
  doc: '[class java.io.File]  output unpaired FASTQ file [required]'
  type: File?
  inputBinding:
    prefix: --unpaired-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_paired_file
  doc: '[class java.io.File]  output interleaved paired FASTQ file [required]'
  type: File?
  outputBinding:
    glob: $(inputs.in_paired_file)
- id: out_unpaired_file
  doc: '[class java.io.File]  output unpaired FASTQ file [required]'
  type: File?
  outputBinding:
    glob: $(inputs.in_unpaired_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dsh-bio:2.0.2--0
cwlVersion: v1.1
baseCommand:
- dsh-interleave-fastq
