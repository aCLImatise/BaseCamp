class: CommandLineTool
id: ../../../blast_align.sh.cwl
inputs:
- id: to_blast_against
  doc: to blast against
  type: string
  inputBinding:
    prefix: -d
- id: directory_default_same
  doc: directory, default same directory as query
  type: string
  inputBinding:
    prefix: -o
- id: blast_identification_mandatory
  doc: for blast identification (mandatory) and output file name
  type: string
  inputBinding:
    prefix: -p
- id: query_nucl_default
  doc: of query, nucl by default
  type: string
  inputBinding:
    prefix: -q
- id: database_nucl_default
  doc: of database, nucl by default
  type: string
  inputBinding:
    prefix: -t
- id: blast_analysis_default
  doc: for blast analysis, default 0.0001
  type: string
  inputBinding:
    prefix: -e
- id: of_threads
  doc: of threads
  type: string
  inputBinding:
    prefix: -T
- id: display_usage_message
  doc: -h display usage message
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- blast_align.sh
