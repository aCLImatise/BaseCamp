class: CommandLineTool
id: runCA_overlapStoreBuild.cwl
inputs:
- id: in_path_location_created
  doc: path to location where store should be created
  type: File
  inputBinding:
    prefix: -d
- id: in_prefix_of_store
  doc: prefix of store
  type: string
  inputBinding:
    prefix: -p
- id: in_type_store_obt
  doc: 'type of store: obt dup mer ovl'
  type: string
  inputBinding:
    prefix: -t
- id: in_path_to_gkpstore
  doc: path to gkpStore
  type: File
  inputBinding:
    prefix: -g
- id: in_path_input_files
  doc: path to input files
  type: File
  inputBinding:
    prefix: -i
- id: in_jobs
  doc: create 'j' sorting jobs
  type: string
  inputBinding:
    prefix: -jobs
- id: in_memory
  doc: request 'm' gigabytes memory from SGE for sorting
  type: string
  inputBinding:
    prefix: -memory
- id: in_delete_early
  doc: delete intermediate files as soon as possible (unsafe)
  type: boolean
  inputBinding:
    prefix: -deleteearly
- id: in_no_delete
  doc: do not delete intermediate files
  type: boolean
  inputBinding:
    prefix: -nodelete
- id: in_max_error
  doc: discard overlaps with more than 'e' fraction error (no filtering by default)
  type: string
  inputBinding:
    prefix: -maxerror
- id: in_submit
  doc: automatically submit to SGE
  type: boolean
  inputBinding:
    prefix: -submit
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runCA-overlapStoreBuild
