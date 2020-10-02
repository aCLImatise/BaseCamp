class: CommandLineTool
id: jjs.cwl
inputs:
- id: in_dnamevalue_set_property
  doc: (-Dname=value. Set a system property. This option can be repeated.)
  type: boolean
  inputBinding:
    prefix: -D
- id: in_add_modules
  doc: (--add-modules modules. Specify the root user java modules.)
  type: boolean
  inputBinding:
    prefix: --add-modules
- id: in_classpath
  doc: (-cp path. Specify where to find user class files.)
  type: boolean
  inputBinding:
    prefix: -classpath
- id: in_dump_on_error
  doc: "(Dump a stack trace on errors.)\nparam: [true|false]   default: false"
  type: boolean
  inputBinding:
    prefix: -dump-on-error
- id: in_full_version
  doc: "(Print full version info of Nashorn.)\nparam: [true|false]   default: false"
  type: boolean
  inputBinding:
    prefix: -fullversion
- id: in_fx
  doc: "(Launch script as an fx application.)\nparam: [true|false]   default: false"
  type: boolean
  inputBinding:
    prefix: -fx
- id: in_language
  doc: "(Specify ECMAScript language version.)\nparam: [es5|es6]   default: es5"
  type: boolean
  inputBinding:
    prefix: --language
- id: in_module_path
  doc: (--module-path path. Specify where to find user java modules.)
  type: boolean
  inputBinding:
    prefix: --module-path
- id: in_no_deprecation_warning
  doc: "(Do not show nashorn deprecation warning.)\nparam: [true|false]   default:\
    \ false"
  type: boolean
  inputBinding:
    prefix: --no-deprecation-warning
- id: in_optimistic_types
  doc: "(Use optimistic type assumptions with deoptimizing recompilation.\nThis makes\
    \ the compiler try, for any program symbol whose type cannot\nbe proven at compile\
    \ time, to type it as narrow and primitive as\npossible. If the runtime encounters\
    \ an error because symbol type\nis too narrow, a wider method will be generated\
    \ until steady stage\nis reached. While this produces as optimal Java Bytecode\
    \ as possible,\nerroneous type guesses will lead to longer warmup. Optimistic\
    \ typing\nis currently enabled by default, but can be disabled for faster\nstartup\
    \ performance.)\nparam: [true|false]   default: true"
  type: boolean
  inputBinding:
    prefix: --optimistic-types
- id: in_scripting
  doc: "(Enable scripting features.)\nparam: [true|false]   default: false"
  type: boolean
  inputBinding:
    prefix: -scripting
- id: in_strict
  doc: "(Run scripts in strict mode.)\nparam: [true|false]   default: false"
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_timezone
  doc: "(Set timezone for script execution.)\nparam: <timezone>   default: GMT"
  type: boolean
  inputBinding:
    prefix: -timezone
- id: in_version
  doc: "(Print version info of Nashorn.)\nparam: [true|false]   default: false\n"
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jjs
