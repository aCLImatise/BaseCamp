version 1.0

task Dxjobutilnewjob {
  input {
    String? input_added_using
    String? input_json
    File? input_json_file
    String? instance_type
    Boolean? instance_type_help
    String? extra_args
    Int? property
    Int? tag
    String? name
    Boolean? depends_on
  }
  command <<<
    dx_jobutil_new_job \
      ~{if defined(input_added_using) then ("--input " +  '"' + input_added_using + '"') else ""} \
      ~{if defined(input_json) then ("--input-json " +  '"' + input_json + '"') else ""} \
      ~{if defined(input_json_file) then ("--input-json-file " +  '"' + input_json_file + '"') else ""} \
      ~{if defined(instance_type) then ("--instance-type " +  '"' + instance_type + '"') else ""} \
      ~{if (instance_type_help) then "--instance-type-help" else ""} \
      ~{if defined(extra_args) then ("--extra-args " +  '"' + extra_args + '"') else ""} \
      ~{if defined(property) then ("--property " +  '"' + property + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (depends_on) then "--depends-on" else ""}
  >>>
  parameter_meta {
    input_added_using: "An input to be added using \\\"<input\\nname>[:<class>]=<input value>\\\" (provide \\\"class\\\" if\\nthere is no input spec; it can be any job IO class,\\ne.g. \\\"string\\\", \\\"array:string\\\", or \\\"array\\\"; if \\\"class\\\"\\nis \\\"array\\\" or not specified, the value will be\\nattempted to be parsed as JSON and is otherwise\\ntreated as a string)"
    input_json: "The full input JSON (keys=input field names,\\nvalues=input field values)"
    input_json_file: "Load input JSON from FILENAME (\\\"-\\\" to use stdin)"
    instance_type: "Specify instance type(s) for jobs this executable will\\nrun; see --instance-type-help for more details"
    instance_type_help: "Print help for specifying instance types"
    extra_args: "Arguments (in JSON format) to pass to the underlying\\nAPI method, overriding the default settings"
    property: "=VALUE  Key-value pair to add as a property; repeat as\\nnecessary, e.g. \\\"--property key1=val1 --property\\nkey2=val2\\\""
    tag: "Tag for the resulting execution; repeat as necessary,\\ne.g. \\\"--tag tag1 --tag tag2\\\""
    name: "Name for the new job (default is the current job name,\\nplus \\\":<function>\\\")"
    depends_on: "[JOB_OR_OBJECT_ID [JOB_OR_OBJECT_ID ...]]\\nJob and/or data object IDs that must finish or close\\nbefore the new job should be run. WARNING: For proper\\nparsing, do not use this flag directly before the\\n*function* parameter.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}