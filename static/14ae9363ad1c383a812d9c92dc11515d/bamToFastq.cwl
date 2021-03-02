class: CommandLineTool
id: bamToFastq.cwl
inputs:
- id: in_fq_two
  doc: "FASTQ for second end.  Used if BAM contains paired-end data.\nBAM should be\
    \ sorted by query name is creating paired FASTQ."
  type: boolean?
  inputBinding:
    prefix: -fq2
- id: in_tags
  doc: "Create FASTQ based on the mate info\nin the BAM R2 and Q2 tags."
  type: boolean?
  inputBinding:
    prefix: -tags
- id: in_fq
  doc: ''
  type: string?
  inputBinding:
    prefix: -fq
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- bamToFastq
