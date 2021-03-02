class: CommandLineTool
id: synapse_get.cwl
inputs:
- id: in_query
  doc: "Optional query parameter, will fetch all of the\nentities returned by a query\
    \ (see query for help)."
  type: string?
  inputBinding:
    prefix: --query
- id: in_recursive
  doc: "Fetches content in Synapse recursively contained in\nthe parentId specified\
    \ by id."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_follow_link
  doc: Determines whether the link returns the target Entity.
  type: boolean?
  inputBinding:
    prefix: --followLink
- id: in_limit_search
  doc: "Synapse ID of a container such as project or folder to\nlimit search for files\
    \ if using a path."
  type: File?
  inputBinding:
    prefix: --limitSearch
- id: in_download_location
  doc: 'Directory to download file to [default: ./].'
  type: File?
  inputBinding:
    prefix: --downloadLocation
- id: in_multithreaded
  doc: "Download file using a multiple threaded\nimplementation. This flag will be\
    \ removed in the\nfuture when multi-threaded download is deemed fully\nstable\
    \ and becomes the default implementation.\n"
  type: boolean?
  inputBinding:
    prefix: --multiThreaded
- id: in_v
  doc: ''
  type: string?
  inputBinding:
    prefix: -v
- id: in_syn_one_two_three
  doc: Synapse ID of form syn123 of desired data object.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- get
