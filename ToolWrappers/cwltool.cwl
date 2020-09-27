class: CommandLineTool
id: cwltool.cwl
inputs:
- id: in_record_container_id
  doc: "If enabled, store the Docker container ID into a file.\nSee --cidfile-dir\
    \ to specify the directory."
  type: boolean
  inputBinding:
    prefix: --record-container-id
- id: in_cid_file_dir
  doc: "Directory for storing the Docker container ID file.\nThe default is the current\
    \ directory"
  type: File
  inputBinding:
    prefix: --cidfile-dir
- id: in_cid_file_prefix
  doc: "Specify a prefix to the container ID filename. Final\nfile name will be followed\
    \ by a timestamp. The default\nis no prefix.\n"
  type: File
  inputBinding:
    prefix: --cidfile-prefix
- id: in_parallel
  doc: ''
  type: boolean
  inputBinding:
    prefix: --parallel
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
- id: in_basedir
  doc: ''
  type: string
  inputBinding:
    prefix: --basedir
- id: in_cwl_document
  doc: "path or URL to a CWL Workflow, CommandLineTool, or\nExpressionTool. If the\
    \ `inputs_object` has a\n`cwl:tool` field indicating the path or URL to the\n\
    cwl_document, then the `workflow` argument is\noptional."
  type: string
  inputBinding:
    position: 0
- id: in_inputs_object
  doc: "path or URL to a YAML or JSON formatted description of\nthe required input\
    \ values for the given\n`cwl_document`."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cwltool
