class: CommandLineTool
id: ribocutter.cwl
inputs:
- id: in_input
  doc: Input fastq(s)
  type: string[]
  inputBinding:
    prefix: --input
- id: in_output
  doc: output filename
  type: File?
  inputBinding:
    prefix: --output
- id: in_max_reads
  doc: max reads to examine
  type: long?
  inputBinding:
    prefix: --max_reads
- id: in_min_read_length
  doc: "A fasta file of background sequences that you do not\nwish to target"
  type: long?
  inputBinding:
    prefix: --min_read_length
- id: in_t_seven
  doc: T7 promoter sequence
  type: long?
  inputBinding:
    prefix: --t7
- id: in_overlap
  doc: The overlap, compatible with EnGen NEB kit
  type: string?
  inputBinding:
    prefix: --overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribocutter:0.0.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- ribocutter
