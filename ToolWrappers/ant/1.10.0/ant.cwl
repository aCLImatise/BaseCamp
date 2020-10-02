class: CommandLineTool
id: ant.cwl
inputs:
- id: in_no_config
  doc: "suppress sourcing of /etc/ant.conf,\n$HOME/.ant/ant.conf, and $HOME/.antrc\n\
    configuration files"
  type: boolean
  inputBinding:
    prefix: --noconfig
- id: in_use_jikes
  doc: "enable use of jikes by default, unless\nset explicitly in configuration files"
  type: boolean
  inputBinding:
    prefix: --usejikes
- id: in_exec_debug
  doc: "print ant exec line generated by this\nlaunch script"
  type: boolean
  inputBinding:
    prefix: --execdebug
- id: in_project_help
  doc: print project help information and exit
  type: boolean
  inputBinding:
    prefix: -projecthelp
- id: in_version
  doc: print the version information and exit
  type: boolean
  inputBinding:
    prefix: -version
- id: in_diagnostics
  doc: "print information that might be helpful to\ndiagnose or report problems and\
    \ exit"
  type: boolean
  inputBinding:
    prefix: -diagnostics
- id: in_quiet
  doc: be extra quiet
  type: boolean
  inputBinding:
    prefix: -quiet
- id: in_silent
  doc: print nothing but task outputs and build failures
  type: boolean
  inputBinding:
    prefix: -silent
- id: in_verbose
  doc: be extra verbose
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_debug
  doc: print debugging information
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_emacs
  doc: produce logging information without adornments
  type: boolean
  inputBinding:
    prefix: -emacs
- id: in_lib
  doc: specifies a path to search for jars and classes
  type: File
  inputBinding:
    prefix: -lib
- id: in_log_file
  doc: use given file for log
  type: File
  inputBinding:
    prefix: -logfile
- id: in_l
  doc: <file>                ''
  type: boolean
  inputBinding:
    prefix: -l
- id: in_logger
  doc: the class which is to perform logging
  type: string
  inputBinding:
    prefix: -logger
- id: in_listener
  doc: add an instance of class as a project listener
  type: string
  inputBinding:
    prefix: -listener
- id: in_no_input
  doc: do not allow interactive input
  type: boolean
  inputBinding:
    prefix: -noinput
- id: in_buildfile
  doc: use given buildfile
  type: File
  inputBinding:
    prefix: -buildfile
- id: in_file
  doc: <file>              ''
  type: boolean
  inputBinding:
    prefix: -file
- id: in_f
  doc: <file>              ''
  type: boolean
  inputBinding:
    prefix: -f
- id: in_propertyvalue_use_value
  doc: <property>=<value>   use value for given property
  type: boolean
  inputBinding:
    prefix: -D
- id: in_keep_going
  doc: "execute all targets that do not depend\non failed target(s)"
  type: boolean
  inputBinding:
    prefix: -keep-going
- id: in_property_file
  doc: "load all properties from file with -D\nproperties taking precedence"
  type: File
  inputBinding:
    prefix: -propertyfile
- id: in_input_handler
  doc: the class which will handle input requests
  type: string
  inputBinding:
    prefix: -inputhandler
- id: in_find
  doc: (s)earch for buildfile towards the root of
  type: File
  inputBinding:
    prefix: -find
- id: in_file_filesystem_use
  doc: <file>           the filesystem and use it
  type: boolean
  inputBinding:
    prefix: -s
- id: in_nice
  doc: 'number          A niceness value for the main thread:                         1
    (lowest) to 10 (highest); 5 is the default'
  type: boolean
  inputBinding:
    prefix: -nice
- id: in_no_user_lib
  doc: Run ant without using the jar files from                         ${user.home}/.ant/lib
  type: boolean
  inputBinding:
    prefix: -nouserlib
- id: in_no_classpath
  doc: Run ant without using CLASSPATH
  type: boolean
  inputBinding:
    prefix: -noclasspath
- id: in_auto_proxy
  doc: 'Java1.5+: use the OS proxy settings'
  type: boolean
  inputBinding:
    prefix: -autoproxy
- id: in_main
  doc: override Ant's normal entry point
  type: string
  inputBinding:
    prefix: -main
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ant
