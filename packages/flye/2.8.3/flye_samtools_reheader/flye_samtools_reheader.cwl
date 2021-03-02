class: CommandLineTool
id: flye_samtools_reheader.cwl
inputs:
- id: in_no_pg
  doc: Do not generate an @PG header line.
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_in_place
  doc: "Modify the bam/cram file directly.\n(Defaults to outputting to stdout.)\n"
  type: boolean?
  inputBinding:
    prefix: --in-place
- id: in_or
  doc: samtools reheader [-P] -i in.header.sam file.bam
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- reheader
