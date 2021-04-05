class: CommandLineTool
id: blast_align.sh.cwl
inputs:
- id: in_file_fasta_format
  doc: file in FASTA format
  type: File?
  inputBinding:
    prefix: -i
- id: in_to_blast_against
  doc: to blast against
  type: string?
  inputBinding:
    prefix: -d
- id: in_directory_default_same
  doc: directory, default same directory as query
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_blast_identification_mandatory
  doc: for blast identification (mandatory) and output file name
  type: File?
  inputBinding:
    prefix: -p
- id: in_query_nucl_default
  doc: of query, nucl by default
  type: string?
  inputBinding:
    prefix: -q
- id: in_database_nucl_default
  doc: of database, nucl by default
  type: string?
  inputBinding:
    prefix: -t
- id: in_blast_analysis_default
  doc: for blast analysis, default 0.0001
  type: double?
  inputBinding:
    prefix: -e
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
- id: out_blast_identification_mandatory
  doc: for blast identification (mandatory) and output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_blast_identification_mandatory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- blast_align.sh
