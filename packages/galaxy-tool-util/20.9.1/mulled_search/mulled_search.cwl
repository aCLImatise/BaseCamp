class: CommandLineTool
id: mulled_search.cwl
inputs:
- id: in_destination
  doc: "Choose where to search. Options are 'conda', 'quay',\n'singularity' and 'github'.\
    \ If no option are given,\nall will be searched."
  type: string[]
  inputBinding:
    prefix: --destination
- id: in_organization
  doc: "Change quay organization to search; default is\nbiocontainers."
  type: string?
  inputBinding:
    prefix: --organization
- id: in_channel
  doc: Change conda channel to search; default is bioconda.
  type: string?
  inputBinding:
    prefix: --channel
- id: in_non_strict
  doc: "Autocorrection of typos activated. Lists more results\nbut can be confusing.\
    \ For too many queries quay.io\nblocks the request and the results can be incomplete."
  type: boolean?
  inputBinding:
    prefix: --non-strict
- id: in_json
  doc: Returns results as JSON.
  type: boolean?
  inputBinding:
    prefix: --json
- id: in_search
  doc: "The name of the tool(s) to search for.\n"
  type: string[]
  inputBinding:
    prefix: --search
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-tool-util:20.9.1--py_0
cwlVersion: v1.1
baseCommand:
- mulled-search
