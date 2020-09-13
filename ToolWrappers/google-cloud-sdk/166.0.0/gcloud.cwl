class: CommandLineTool
id: ../../../gcloud.cwl
inputs:
- id: in_account
  doc: "Google Cloud Platform user account to use for invocation. Overrides the\n\
    default core/account property value for this command invocation."
  type: string
  inputBinding:
    prefix: --account
- id: in_configuration
  doc: "The configuration to use for this command invocation. For more\ninformation\
    \ on how to use configurations, run: gcloud topic\nconfigurations. You can also\
    \ use the [CLOUDSDK_ACTIVE_CONFIG_NAME]\nenvironment variable to set the equivalent\
    \ of this flag for a terminal\nsession."
  type: string
  inputBinding:
    prefix: --configuration
- id: in_flatten
  doc: "=[KEY,...]\nFlatten name[] output resource slices in KEY into separate records\
    \ for\neach item in each slice. Multiple keys and slices may be specified.\nThis\
    \ also flattens keys for --format and --filter. For example,\n--flatten=abc.def[]\
    \ flattens abc.def[].ghi references to abc.def.ghi. A\nresource record containing\
    \ abc.def[] with N elements will expand to N\nrecords in the flattened output.\
    \ This flag interacts with other flags\nthat are applied in this order: --flatten,\
    \ --sort-by, --filter,\n--limit."
  type: boolean
  inputBinding:
    prefix: --flatten
- id: in_format
  doc: "Sets the format for printing command output resources. The default is a\n\
    command-specific human-friendly output format. The supported formats\nare: config,\
    \ csv, default, diff, disable, flattened, get, json, list,\nmulti, none, object,\
    \ table, text, value, yaml. For more details run $\ngcloud topic formats."
  type: string
  inputBinding:
    prefix: --format
- id: in_project
  doc: "The Google Cloud Platform project name to use for this invocation. If\nomitted\
    \ then the current project is assumed. Overrides the default\ncore/project property\
    \ value for this command invocation."
  type: string
  inputBinding:
    prefix: --project
- id: in_quiet
  doc: "Disable all interactive prompts when running gcloud commands. If input\nis\
    \ required, defaults will be used, or an error will be raised.\nOverrides the\
    \ default core/disable_prompts property value for this\ncommand invocation. Must\
    \ be used at the beginning of commands. This is\nequivalent to setting the environment\
    \ variable\nCLOUDSDK_CORE_DISABLE_PROMPTS to 1."
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbosity
  doc: "; default=\"warning\"\nOverride the default verbosity for this command. VERBOSITY\
    \ must be one\nof: debug, info, warning, error, critical, none."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_http
  doc: "Log all HTTP server requests and responses to stderr. Overrides the\ndefault\
    \ core/log_http property value for this command invocation."
  type: boolean
  inputBinding:
    prefix: --log-http
- id: in_trace_token
  doc: "Token used to route traces of service requests for investigation of\nissues.\
    \ Overrides the default core/trace_token property value for this\ncommand invocation."
  type: string
  inputBinding:
    prefix: --trace-token
- id: in_user_output_enabled
  doc: "Print user intended output to the console. Overrides the default\ncore/user_output_enabled\
    \ property value for this command invocation.\nUse --no-user-output-enabled to\
    \ disable."
  type: boolean
  inputBinding:
    prefix: --user-output-enabled
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
