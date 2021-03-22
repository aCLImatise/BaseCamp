class: CommandLineTool
id: strling_extract.cwl
inputs:
- id: in_fast_a
  doc: path to fasta file (required for CRAM)
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_genome_repeats
  doc: optional path to genome repeats file. if it does not exist, it will be created
  type: File?
  inputBinding:
    prefix: --genome-repeats
- id: in_proportion_repeat
  doc: 'proportion of read that is repetitive to be considered as STR (default: 0.8)'
  type: string?
  inputBinding:
    prefix: --proportion-repeat
- id: in_min_mapq
  doc: 'minimum mapping quality (does not apply to STR reads) (default: 40)'
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_bam
  doc: path to bam file
  type: string
  inputBinding:
    position: 0
- id: in_bin
  doc: path bin to output bin file to be created
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/strling:0.4.2--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- strling
- extract
