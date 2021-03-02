class: CommandLineTool
id: create_fake_genome.py.cwl
inputs:
- id: in_locus
  doc: locus in format <chr>:<start>-<end>
  type: string?
  inputBinding:
    prefix: --locus
- id: in_strand
  doc: '{+,-}        strand of locus'
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_output_prefix
  doc: "Output prefix\n"
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_genome_filename
  doc: gff_filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- create_fake_genome.py
