class: CommandLineTool
id: dx_jobutil_new_job.cwl
inputs:
- id: in_input
  doc: "An input to be added using \"<input\nname>[:<class>]=<input value>\" (provide\
    \ \"class\" if\nthere is no input spec; it can be any job IO class,\ne.g. \"string\"\
    , \"array:string\", or \"array\"; if \"class\"\nis \"array\" or not specified,\
    \ the value will be\nattempted to be parsed as JSON and is otherwise\ntreated\
    \ as a string)"
  type: string?
  inputBinding:
    prefix: --input
- id: in_input_json
  doc: "The full input JSON (keys=input field names,\nvalues=input field values)"
  type: string?
  inputBinding:
    prefix: --input-json
- id: in_input_json_file
  doc: Load input JSON from FILENAME ("-" to use stdin)
  type: File?
  inputBinding:
    prefix: --input-json-file
- id: in_instance_type
  doc: "Specify instance type(s) for jobs this executable will\nrun; see --instance-type-help\
    \ for more details"
  type: string?
  inputBinding:
    prefix: --instance-type
- id: in_instance_type_help
  doc: Print help for specifying instance types
  type: boolean?
  inputBinding:
    prefix: --instance-type-help
- id: in_extra_args
  doc: "Arguments (in JSON format) to pass to the underlying\nAPI method, overriding\
    \ the default settings"
  type: string?
  inputBinding:
    prefix: --extra-args
- id: in_property
  doc: "=VALUE  Key-value pair to add as a property; repeat as\nnecessary, e.g. \"\
    --property key1=val1 --property\nkey2=val2\""
  type: long?
  inputBinding:
    prefix: --property
- id: in_tag
  doc: "Tag for the resulting execution; repeat as necessary,\ne.g. \"--tag tag1 --tag\
    \ tag2\""
  type: long?
  inputBinding:
    prefix: --tag
- id: in_name
  doc: "Name for the new job (default is the current job name,\nplus \":<function>\"\
    )"
  type: string?
  inputBinding:
    prefix: --name
- id: in_depends_on
  doc: "[JOB_OR_OBJECT_ID [JOB_OR_OBJECT_ID ...]]\nJob and/or data object IDs that\
    \ must finish or close\nbefore the new job should be run. WARNING: For proper\n\
    parsing, do not use this flag directly before the\n*function* parameter.\n"
  type: boolean?
  inputBinding:
    prefix: --depends-on
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-new-job
