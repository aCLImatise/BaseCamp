class: CommandLineTool
id: dx_jobutil_new_job.cwl
inputs:
- id: function
  doc: Name of the function to run
  type: string
  inputBinding:
    position: 0
- id: input
  doc: An input to be added using "<input name>[:<class>]=<input value>" (provide
    "class" if there is no input spec; it can be any job IO class, e.g. "string",
    "array:string", or "array"; if "class" is "array" or not specified, the value
    will be attempted to be parsed as JSON and is otherwise treated as a string)
  type: string
  inputBinding:
    prefix: --input
- id: input_json
  doc: The full input JSON (keys=input field names, values=input field values)
  type: string
  inputBinding:
    prefix: --input-json
- id: input_json_file
  doc: Load input JSON from FILENAME ("-" to use stdin)
  type: File
  inputBinding:
    prefix: --input-json-file
- id: instance_type
  doc: Specify instance type(s) for jobs this executable will run; see --instance-type-help
    for more details
  type: string
  inputBinding:
    prefix: --instance-type
- id: instance_type_help
  doc: Print help for specifying instance types
  type: boolean
  inputBinding:
    prefix: --instance-type-help
- id: extra_args
  doc: Arguments (in JSON format) to pass to the underlying API method, overriding
    the default settings
  type: string
  inputBinding:
    prefix: --extra-args
- id: property
  doc: =VALUE  Key-value pair to add as a property; repeat as necessary, e.g. "--property
    key1=val1 --property key2=val2"
  type: string
  inputBinding:
    prefix: --property
- id: tag
  doc: Tag for the resulting execution; repeat as necessary, e.g. "--tag tag1 --tag
    tag2"
  type: string
  inputBinding:
    prefix: --tag
- id: name
  doc: Name for the new job (default is the current job name, plus ":<function>")
  type: string
  inputBinding:
    prefix: --name
- id: depends_on
  doc: '[JOB_OR_OBJECT_ID [JOB_OR_OBJECT_ID ...]] Job and/or data object IDs that
    must finish or close before the new job should be run. WARNING: For proper parsing,
    do not use this flag directly before the *function* parameter.'
  type: boolean
  inputBinding:
    prefix: --depends-on
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-new-job
