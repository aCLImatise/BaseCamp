class: CommandLineTool
id: srf_list.cwl
inputs:
- id: in_count_only_list
  doc: Count only - do not list filenames
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_verbose_gives_data
  doc: Verbose - gives summary data per file too
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_list_long_format
  doc: "List in long format. Lines contain:\nname position body-size header-size\n"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_srf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0
cwlVersion: v1.1
baseCommand:
- srf_list
