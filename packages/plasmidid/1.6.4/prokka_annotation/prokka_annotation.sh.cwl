class: CommandLineTool
id: prokka_annotation.sh.cwl
inputs:
- id: in_file_fasta_format
  doc: file in FASTA format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory
  doc: directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_sample_identification_mandatory
  doc: for sample identification (mandatory) and output file name
  type: File?
  inputBinding:
    prefix: -p
- id: in_bacteria_by_default
  doc: (Bacteria by default)
  type: string?
  inputBinding:
    prefix: -k
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_genus_case_known
  doc: genus in case is known by user
  type: string?
  inputBinding:
    prefix: -G
- id: in_species_case_known
  doc: species in case is known by user
  type: string?
  inputBinding:
    prefix: -S
- id: in_remove_files_other
  doc: :remove files other than gff and renamed fasta
  type: string?
  inputBinding:
    prefix: -c
- id: in_of_threads
  doc: of threads
  type: long?
  inputBinding:
    prefix: -T
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sample_identification_mandatory
  doc: for sample identification (mandatory) and output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_sample_identification_mandatory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- prokka_annotation.sh
