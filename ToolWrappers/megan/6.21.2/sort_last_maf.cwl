class: CommandLineTool
id: sort_last_maf.cwl
inputs:
- id: in_input
  doc: '[string]                 Input file in MAF format as produced by Last (.gz
    ok). Mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_reads_file
  doc: '[string]             File containing all reads, if given, determines output
    order (.gz ok).'
  type: File?
  inputBinding:
    prefix: --readsFile
- id: in_output
  doc: '[string]                Output file (stdout or .gz ok). Default value: stdout'
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_reads_file
  doc: '[string]             File containing all reads, if given, determines output
    order (.gz ok).'
  type: File?
  outputBinding:
    glob: $(inputs.in_reads_file)
- id: out_output
  doc: '[string]                Output file (stdout or .gz ok). Default value: stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megan:6.21.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- sort-last-maf
