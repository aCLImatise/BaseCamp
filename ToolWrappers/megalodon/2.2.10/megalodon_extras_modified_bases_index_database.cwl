class: CommandLineTool
id: megalodon_extras_modified_bases_index_database.cwl
inputs:
- id: in_megalodon_directory
  doc: "Megalodon output directory containing per-read\nmodified bases database to\
    \ be indexed. Default:\nmegalodon_results"
  type: Directory?
  inputBinding:
    prefix: --megalodon-directory
- id: in_output_suffix
  doc: "Log file suffix. Default: mod_index_database\n"
  type: File?
  inputBinding:
    prefix: --output-suffix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_megalodon_directory
  doc: "Megalodon output directory containing per-read\nmodified bases database to\
    \ be indexed. Default:\nmegalodon_results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_megalodon_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- modified_bases
- index_database
