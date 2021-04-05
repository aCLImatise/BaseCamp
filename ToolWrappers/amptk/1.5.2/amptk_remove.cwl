class: CommandLineTool
id: amptk_remove.cwl
inputs:
- id: in_input
  doc: Input FASTQ file (.demux.fq)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_threshold
  doc: Keep samples with read count greater than -t
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_list
  doc: List of sample (barcode) names to remove, separate by space
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_file
  doc: List of sample (barcode) names to remove in a file, one per line
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_out
  doc: Output file name
  type: File?
  inputBinding:
    prefix: --out
- id: in_format
  doc: 'File format for output file. Default: fastq [fastq, fasta]'
  type: File?
  inputBinding:
    prefix: --format
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_format
  doc: 'File format for output file. Default: fastq [fastq, fasta]'
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.2--py_0
cwlVersion: v1.1
baseCommand:
- amptk
- remove
