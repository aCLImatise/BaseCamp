class: CommandLineTool
id: convert_external_genome.cwl
inputs:
- id: nuc_me_rpath
  doc: Path to the 'nucmer' executable.
  type: string
  inputBinding:
    prefix: --nucmerpath
- id: nuc_mer_args
  doc: Optional arguments to pass to the 'nucmer' executable.
  type: string
  inputBinding:
    prefix: --nucmerargs
- id: delta_filter_path
  doc: Path to the 'delta-filter' executable.
  type: string
  inputBinding:
    prefix: --deltafilterpath
- id: delta_filter_args
  doc: Optional arguments to pass to the 'delta-filter' executable.
  type: string
  inputBinding:
    prefix: --deltafilterargs
- id: reference
  doc: Path to the reference fasta file.
  type: string
  inputBinding:
    prefix: --reference
- id: external
  doc: Path to the external genome fasta file.
  type: string
  inputBinding:
    prefix: --external
- id: name
  doc: Name of this external genome.
  type: string
  inputBinding:
    prefix: --name
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_external_genome
