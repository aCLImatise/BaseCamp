class: CommandLineTool
id: amrfinder_update.cwl
inputs:
- id: in_database
  doc: "Directory for all versions of AMRFinder databases\nDefault: /usr/local/bin/data"
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_force_update
  doc: Force updating the AMRFinder database
  type: boolean?
  inputBinding:
    prefix: --force_update
- id: in_quiet
  doc: Suppress messages to STDERR
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: "Max. number of threads\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_debug
  doc: Integrity checks
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log
  doc: Error log file, appended, opened on application start
  type: File?
  inputBinding:
    prefix: --log
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0
cwlVersion: v1.1
baseCommand:
- amrfinder_update
