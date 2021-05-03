class: CommandLineTool
id: alevin_fry_collate.cwl
inputs:
- id: in_input_dir
  doc: input directory made by generate-permit-list
  type: Directory?
  inputBinding:
    prefix: --input-dir
- id: in_max_records
  doc: "the maximum number of read records to keep in memory at once\n[default: 30000000]"
  type: long?
  inputBinding:
    prefix: --max-records
- id: in_rad_dir
  doc: the directory containing the RAD file to be collated
  type: File?
  inputBinding:
    prefix: --rad-dir
- id: in_threads
  doc: 'number of threads to use for processing [default: 2]'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0
cwlVersion: v1.1
baseCommand:
- alevin-fry
- collate
