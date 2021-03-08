class: CommandLineTool
id: mmseqs_databases.cwl
inputs:
- id: in_force_reuse
  doc: Reuse tmp filse in tmp/latest folder ignoring parameters and version changes
    [0]
  type: boolean?
  inputBinding:
    prefix: --force-reuse
- id: in_remove_tmp_files
  doc: Delete temporary files [0]
  type: boolean?
  inputBinding:
    prefix: --remove-tmp-files
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_name
  doc: 'Type            Taxonomy        Url                                                           '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- databases
