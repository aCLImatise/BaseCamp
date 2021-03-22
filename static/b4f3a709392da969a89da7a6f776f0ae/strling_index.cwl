class: CommandLineTool
id: strling_index.cwl
inputs:
- id: in_genome_repeats
  doc: 'optional path to output genome repeats file. if it does not exist, it will
    be created (default: ./<FASTA>.str)'
  type: File?
  inputBinding:
    prefix: --genome-repeats
- id: in_proportion_repeat
  doc: 'proportion of read that is repetitive to be considered as STR (default: 0.8)'
  type: string?
  inputBinding:
    prefix: --proportion-repeat
- id: in_fast_a
  doc: path to fasta file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_genome_repeats
  doc: 'optional path to output genome repeats file. if it does not exist, it will
    be created (default: ./<FASTA>.str)'
  type: File?
  outputBinding:
    glob: $(inputs.in_genome_repeats)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/strling:0.4.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- strling
- index
