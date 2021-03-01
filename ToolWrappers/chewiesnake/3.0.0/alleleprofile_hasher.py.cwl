class: CommandLineTool
id: alleleprofile_hasher.py.cwl
inputs:
- id: in_profile
  doc: 'Path to allele profile in tsv with first column #File'
  type: File?
  inputBinding:
    prefix: --profile
- id: in_database
  doc: Path to location of all loci fasta files
  type: File?
  inputBinding:
    prefix: --database
- id: in_outfile
  doc: Path to new allele profile containing the hash values
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_verbose
  doc: Print verbose statements
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_force
  doc: Force overwrite of existing result files
  type: boolean?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chewiesnake:3.0.0--1
cwlVersion: v1.1
baseCommand:
- alleleprofile_hasher.py
