class: CommandLineTool
id: make_families.sh.cwl
inputs:
- id: in_length_barcode_portion
  doc: ': The length of the barcode portion of each read. Default: 12'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_length_invariant_ligation
  doc: ': The length of the invariant (ligation) portion of each read. Default: 5'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_memory_usage_parameter
  doc: ": The memory usage parameter to pass directly to the sort command's -S option.\n\
    Can be an absolute figure like 5G or a percentage. See man sort for details."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_temporary_file_directory
  doc: ": The temporary file directory that sort should use.\nWill be passed directly\
    \ to the sort command's -T option.\n"
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0
cwlVersion: v1.1
baseCommand:
- make-families.sh
