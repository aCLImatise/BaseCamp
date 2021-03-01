class: CommandLineTool
id: biom_to_stdBiom.py.cwl
inputs:
- id: in_input_biom
  doc: 'The abundance file (format: BIOM).'
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_output_biom
  doc: "The fully compatible abundance file (format: BIOM).\n[Default: abundance.std.biom]"
  type: File?
  inputBinding:
    prefix: --output-biom
- id: in_output_metadata
  doc: "The blast affiliations informations (format: TSV).\n[Default: blast_informations.std.tsv]"
  type: string?
  inputBinding:
    prefix: --output-metadata
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.0--py37_0
cwlVersion: v1.1
baseCommand:
- biom_to_stdBiom.py
