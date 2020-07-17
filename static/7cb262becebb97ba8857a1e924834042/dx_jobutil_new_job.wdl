version 1.0

task DxJobutilNewJob {
  input {
    String? input_added_using
    String? input_json
    File? input_json_file
    String? instance_type
    Boolean? instance_type_help
    String? extra_args
    String? property
    String? tag
    String? name
    Boolean? depends_on
    String function
  }
  command <<<
    dx-jobutil-new-job \
      ~{function} \
      ~{if defined(input_added_using) then ("--input " +  '"' + input_added_using + '"') else ""} \
      ~{if defined(input_json) then ("--input-json " +  '"' + input_json + '"') else ""} \
      ~{if defined(input_json_file) then ("--input-json-file " +  '"' + input_json_file + '"') else ""} \
      ~{if defined(instance_type) then ("--instance-type " +  '"' + instance_type + '"') else ""} \
      ~{true="--instance-type-help" false="" instance_type_help} \
      ~{if defined(extra_args) then ("--extra-args " +  '"' + extra_args + '"') else ""} \
      ~{if defined(property) then ("--property " +  '"' + property + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--depends-on" false="" depends_on}
  >>>
  parameter_meta {
    input_added_using: "An input to be added using \"<input name>[:<class>]=<input value>\" (provide \"class\" if there is no input spec; it can be any job IO class, e.g. \"string\", \"array:string\", or \"array\"; if \"class\" is \"array\" or not specified, the value will be attempted to be parsed as JSON and is otherwise treated as a string)"
    input_json: "The full input JSON (keys=input field names, values=input field values)"
    input_json_file: "Load input JSON from FILENAME (\"-\" to use stdin)"
    instance_type: "Specify instance type(s) for jobs this executable will run; see --instance-type-help for more details"
    instance_type_help: "Print help for specifying instance types"
    extra_args: "Arguments (in JSON format) to pass to the underlying API method, overriding the default settings"
    property: "=VALUE  Key-value pair to add as a property; repeat as necessary, e.g. \"--property key1=val1 --property key2=val2\""
    tag: "Tag for the resulting execution; repeat as necessary, e.g. \"--tag tag1 --tag tag2\""
    name: "Name for the new job (default is the current job name, plus \":<function>\")"
    depends_on: "[JOB_OR_OBJECT_ID [JOB_OR_OBJECT_ID ...]] Job and/or data object IDs that must finish or close before the new job should be run. WARNING: For proper parsing, do not use this flag directly before the *function* parameter."
    function: "Name of the function to run"
  }
}