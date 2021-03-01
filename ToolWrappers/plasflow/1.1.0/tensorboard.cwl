class: CommandLineTool
id: tensorboard.cwl
inputs:
- id: in_logdir
  doc: "logdir specifies the directory where TensorBoard will\nlook to find TensorFlow\
    \ event files that it can\ndisplay. TensorBoard will recursively walk the\ndirectory\
    \ structure rooted at logdir, looking for\n.*tfevents.* files. You may also pass\
    \ a comma\nseparated list of log directories, and TensorBoard\nwill watch each\
    \ directory. You can also assign names\nto individual log directories by putting\
    \ a colon\nbetween the name and the path, as in tensorboard\n--logdir=name1:/path/to/logs/1,name2:/path/to/logs/2"
  type: File?
  inputBinding:
    prefix: --logdir
- id: in_run_app_verbosity
  doc: "[DEBUG]       Whether to run the app in debug mode. This increases\nlog verbosity\
    \ to DEBUG."
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_no_debug
  doc: "What host to listen to. Defaults to serving on\n0.0.0.0, set to 127.0.0.1\
    \ (localhost) todisable remote\naccess (also quiets security warnings)."
  type: double?
  inputBinding:
    prefix: --nodebug
- id: in_inspect
  doc: "[INSPECT]   Use this flag to print out a digest of your event\nfiles to the\
    \ command line, when no data is shown on\nTensorBoard or the data shown looks\
    \ weird. Example\nusages: tensorboard --inspect\n--event_file=myevents.out tensorboard\
    \ --inspect\n--event_file=myevents.out --tag=loss tensorboard\n--inspect --logdir=mylogdir\
    \ tensorboard --inspect\n--logdir=mylogdir --tag=loss See\ntensorflow/python/summary/event_file_inspector.py\
    \ for\nmore info and detailed usage."
  type: boolean?
  inputBinding:
    prefix: --inspect
- id: in_no_inspect
  doc: The particular tag to query for. Only used if
  type: string?
  inputBinding:
    prefix: --noinspect
- id: in_event_file
  doc: "The particular event file to query for. Only used if\n--inspect is present\
    \ and --logdir is not specified."
  type: File?
  inputBinding:
    prefix: --event_file
- id: in_port
  doc: What port to serve TensorBoard on.
  type: string?
  inputBinding:
    prefix: --port
- id: in_purge_orphaned_data
  doc: "[PURGE_ORPHANED_DATA]\nWhether to purge data that may have been orphaned due\n\
    to TensorBoard restarts. Disabling purge_orphaned_data\ncan be used to debug data\
    \ disappearance."
  type: boolean?
  inputBinding:
    prefix: --purge_orphaned_data
- id: in_no_purge_orphaned_data
  doc: "How often the backend should load more data.\n"
  type: string?
  inputBinding:
    prefix: --nopurge_orphaned_data
- id: in_var_9
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tensorboard
