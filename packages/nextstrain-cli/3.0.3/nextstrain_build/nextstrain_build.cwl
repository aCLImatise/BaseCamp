class: CommandLineTool
id: nextstrain_build.cwl
inputs:
- id: in_help_all
  doc: Show a full help message of all options and exit
  type: boolean?
  inputBinding:
    prefix: --help-all
- id: in_detach
  doc: "Run the build in the background, detached from your\nterminal. Re-attach later\
    \ using --attach. Currently\nonly supported when also using --aws-batch. (default:\n\
    False)"
  type: boolean?
  inputBinding:
    prefix: --detach
- id: in_attach
  doc: "Re-attach to a --detach'ed build to view output and\ndownload results. Currently\
    \ only supported when also\nusing --aws-batch. (default: None)"
  type: string?
  inputBinding:
    prefix: --attach
- id: in_cpus
  doc: "Number of CPUs/cores/threads/jobs to utilize at once.\nLimits containerized\
    \ (Docker, AWS Batch) builds to\nthis amount. Informs Snakemake's resource scheduler\n\
    when applicable. Informs the AWS Batch instance size\nselection. (default: None)"
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_memory
  doc: "Amount of memory to make available to the build. Units\nof b, kb, mb, gb,\
    \ kib, mib, gib are supported. Limits\ncontainerized (Docker, AWS Batch) builds\
    \ to this\namount. Informs Snakemake's resource scheduler when\napplicable. Informs\
    \ the AWS Batch instance size\nselection. (default: None)"
  type: long?
  inputBinding:
    prefix: --memory
- id: in_download
  doc: "Only download new or modified files matching <pattern>\nfrom the remote build.\
    \ Basic shell-style globbing is\nsupported, but be sure to escape wildcards or\
    \ quote\nthe whole pattern so your shell doesn't expand them.\nMay be passed more\
    \ than once. Currently only supported\nwhen also using --aws-batch. Default is\
    \ to download\nevery new or modified file."
  type: File?
  inputBinding:
    prefix: --download
- id: in_no_download
  doc: "Do not download any files from the remote build when\nit completes. Currently\
    \ only supported when also using\n--aws-batch."
  type: boolean?
  inputBinding:
    prefix: --no-download
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- build
