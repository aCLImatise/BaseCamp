class: CommandLineTool
id: cbBuild.cwl
inputs:
- id: in_in_it
  doc: copy sample cellbrowser.conf and desc.conf to current
  type: boolean?
  inputBinding:
    prefix: --init
- id: in_in_conf
  doc: "a cellbrowser.conf file that specifies labels and all\ninput files, default\
    \ is ./cellbrowser.conf, can be\nspecified multiple times"
  type: File?
  inputBinding:
    prefix: --inConf
- id: in_outdir
  doc: "output directory, default can be set through the env.\nvariable CBOUT or ~/.cellbrowser.conf,\
    \ current value:\nnone"
  type: Directory?
  inputBinding:
    prefix: --outDir
- id: in_port
  doc: "if build is successful, start an http server on this\nport and serve the result\
    \ via http://localhost:port"
  type: string?
  inputBinding:
    prefix: --port
- id: in_recursive
  doc: "run in all subdirectories of the current directory.\nUseful when rebuilding\
    \ a full hierarchy."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_redo
  doc: "do not use cached old data. Can be: 'meta' or 'matrix'\n(matrix includes meta).\n"
  type: string?
  inputBinding:
    prefix: --redo
- id: in_directory
  doc: -d, --debug           show debug messages
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "output directory, default can be set through the env.\nvariable CBOUT or ~/.cellbrowser.conf,\
    \ current value:\nnone"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- cbBuild
