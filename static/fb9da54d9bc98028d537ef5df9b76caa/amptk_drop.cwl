class: CommandLineTool
id: amptk_drop.cwl
inputs:
- id: in_input
  doc: Input OTU file (.cluster.otus.fa) (FASTA)
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_reads
  doc: Demultiplexed reads (.demux.fq) (FASTQ)
  type: boolean?
  inputBinding:
    prefix: --reads
- id: in_list
  doc: List of OTU names to remove, separate by space
  type: boolean?
  inputBinding:
    prefix: --list
- id: in_file
  doc: List of OTU names to remove in a file, one per line
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_out
  doc: 'Output file name. Default: amptk-drop'
  type: File?
  inputBinding:
    prefix: --out
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
  doc: 'Output file name. Default: amptk-drop'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/amptk:1.5.1--py_1
cwlVersion: v1.1
baseCommand:
- amptk
- drop
