class: CommandLineTool
id: jrunscript.cwl
inputs:
- id: in_classpath
  doc: Specify where to find user class files
  type: File
  inputBinding:
    prefix: -classpath
- id: in_cp
  doc: Specify where to find user class files
  type: File
  inputBinding:
    prefix: -cp
- id: in_namevalue_set_property
  doc: <name>=<value>     Set a system property
  type: boolean
  inputBinding:
    prefix: -D
- id: in_flag_pass_flag
  doc: <flag>             Pass <flag> directly to the runtime system
  type: boolean
  inputBinding:
    prefix: -J
- id: in_use_specified_language
  doc: Use specified scripting language
  type: string
  inputBinding:
    prefix: -l
- id: in_evaluate_given_script
  doc: Evaluate given script
  type: string
  inputBinding:
    prefix: -e
- id: in_encoding
  doc: Specify character encoding used by script files
  type: string
  inputBinding:
    prefix: -encoding
- id: in_list_scripting_engines
  doc: List all scripting engines available and exit
  type: boolean
  inputBinding:
    prefix: -q
- id: in_arguments_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jrunscript
