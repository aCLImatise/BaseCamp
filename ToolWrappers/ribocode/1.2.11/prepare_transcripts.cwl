class: CommandLineTool
id: prepare_transcripts.cwl
inputs:
- id: in_gtf
  doc: "Default, suitable for GENCODE and ENSEMBL GTF file,\nplease refer: https://en.wikipedia.org/wiki/GENCODE,\n\
    or using GTFupdate command to update your GTF file."
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_fast_a
  doc: The genome sequences file in fasta format.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_out_dir
  doc: annotation directory name.
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ribocode:1.2.11--pyh145b6a8_1
cwlVersion: v1.1
baseCommand:
- prepare_transcripts
