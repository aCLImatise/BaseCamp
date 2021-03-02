class: CommandLineTool
id: fasta2speclib.cwl
inputs:
- id: in_name_given_file
  doc: "Name for output file(s) (if not given, derived from\ninput file)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_configuration_defaultfastaspeclibconfigjson
  doc: "Name of configuration json file (default:\nfasta2speclib_config.json)\n"
  type: File?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_given_file
  doc: "Name for output file(s) (if not given, derived from\ninput file)"
  type: File?
  outputBinding:
    glob: $(inputs.in_name_given_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ms2pip:3.6.2--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- fasta2speclib
