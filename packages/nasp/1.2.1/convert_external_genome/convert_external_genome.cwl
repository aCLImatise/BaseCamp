class: CommandLineTool
id: convert_external_genome.cwl
inputs:
- id: in_nuc_me_rpath
  doc: Path to the 'nucmer' executable.
  type: File
  inputBinding:
    prefix: --nucmerpath
- id: in_nuc_mer_args
  doc: Optional arguments to pass to the 'nucmer' executable.
  type: string
  inputBinding:
    prefix: --nucmerargs
- id: in_delta_filter_path
  doc: Path to the 'delta-filter' executable.
  type: File
  inputBinding:
    prefix: --deltafilterpath
- id: in_delta_filter_args
  doc: "Optional arguments to pass to the 'delta-filter'\nexecutable."
  type: string
  inputBinding:
    prefix: --deltafilterargs
- id: in_reference
  doc: Path to the reference fasta file.
  type: File
  inputBinding:
    prefix: --reference
- id: in_external
  doc: Path to the external genome fasta file.
  type: File
  inputBinding:
    prefix: --external
- id: in_name
  doc: Name of this external genome.
  type: string
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convert_external_genome
