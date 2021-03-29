class: CommandLineTool
id: fqc.cwl
inputs:
- id: in_fast_q
  doc: The input FASTQ file to use.
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_length_k_kmers
  doc: 'The length k of k-mers for k-mer counting. [default: 5]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_creates_output_file
  doc: Creates an output file for usage with MultiQC under the given path.
  type: File?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_creates_output_file
  doc: Creates an output file for usage with MultiQC under the given path.
  type: File?
  outputBinding:
    glob: $(inputs.in_creates_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastqc-rs:0.2.1--h374f2b1_0
cwlVersion: v1.1
baseCommand:
- fqc
