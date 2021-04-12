class: CommandLineTool
id: pypgatk_cli_ensembl_check.cwl
inputs:
- id: in_config_file
  doc: Configuration to perform Ensembl database check
  type: string?
  inputBinding:
    prefix: --config_file
- id: in_input_fast_a
  doc: input_fasta file to perform the translation
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_output
  doc: Output File
  type: File?
  inputBinding:
    prefix: --output
- id: in_add_stop_codons
  doc: "If a stop codons is found, add a new protein with\nsuffix (_Codon_{num})"
  type: boolean?
  inputBinding:
    prefix: --add_stop_codons
- id: in_num_aa
  doc: "Minimun number of aminoacids for a protein to be\nincluded in the database"
  type: long?
  inputBinding:
    prefix: --num_aa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output File
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.19--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- ensembl-check
