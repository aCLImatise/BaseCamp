class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/get_blast_hits.sh.cwl
inputs:
- id: force_symbolic_links
  doc: "force symbolic links to be followed: resolve symbolic links in DIR after processing\
    \ instances of `..'"
  type: boolean
  inputBinding:
    prefix: -L
- id: use_physical_structure
  doc: "use the physical directory structure without following symbolic links: resolve\
    \ symbolic links in DIR before processing instances of `..'"
  type: boolean
  inputBinding:
    prefix: -P
- id: p_option_supplied
  doc: if the -P option is supplied, and the current working directory cannot be determined
    successfully, exit with a non-zero status
  type: boolean
  inputBinding:
    prefix: -e
- id: at
  doc: on systems that support it, present a file with extended attributes as a directory
    containing the file attributes
  type: boolean
  inputBinding:
    prefix: -@
outputs: []
cwlVersion: v1.1
baseCommand:
- get_blast_hits.sh
