class: CommandLineTool
id: mash_taxscreen.cwl
inputs:
- id: in_parallelism_many_threads
  doc: Parallelism. This many threads will be spawned for processing. [1]
  type: long?
  inputBinding:
    prefix: -p
- id: in_mapping_file_taxonomy
  doc: Mapping file from reference name to taxonomy ID
  type: File?
  inputBinding:
    prefix: -m
- id: in_directory_containing_taxonomy
  doc: Directory containing NCBI taxonomy dump [.]
  type: Directory?
  inputBinding:
    prefix: -t
- id: in_minimum_identity_report
  doc: "Minimum identity to report. Inclusive unless set to zero, in which\ncase only\
    \ identities greater than zero (i.e. with at least one\nshared hash) will be reported.\
    \ Set to -1 to output everything.\n(-1-1) [0]"
  type: long?
  inputBinding:
    prefix: -i
- id: in_maximum_pvalue_report
  doc: Maximum p-value to report. (0-1) [1.0]
  type: long?
  inputBinding:
    prefix: -v
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mash:2.3--ha61e061_0
cwlVersion: v1.1
baseCommand:
- mash
- taxscreen
