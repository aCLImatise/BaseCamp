class: CommandLineTool
id: bcftools_reheader.cwl
inputs:
- id: in_fai
  doc: update sequences and their lengths from the .fai file
  type: File?
  inputBinding:
    prefix: --fai
- id: in_header
  doc: new header
  type: File?
  inputBinding:
    prefix: --header
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_samples
  doc: new sample names
  type: File?
  inputBinding:
    prefix: --samples
- id: in_threads
  doc: use multithreading with <int> worker threads (BCF only) [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bcftools
- reheader
