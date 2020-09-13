version 1.0

task Tensorboard {
  input {
    File? logdir
    Boolean? run_app_debug
    Boolean? no_debug
    Float? host
    Boolean? inspect
    Boolean? no_inspect
    String? tag
    File? event_file
    String? port
    Boolean? purge_orphaned_data
    Boolean? no_purge_orphaned_data
    String? reload_interval
    String? var_12
  }
  command <<<
    tensorboard \
      ~{var_12} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""} \
      ~{if (run_app_debug) then "--debug" else ""} \
      ~{if (no_debug) then "--nodebug" else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if (inspect) then "--inspect" else ""} \
      ~{if (no_inspect) then "--noinspect" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(event_file) then ("--event_file " +  '"' + event_file + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (purge_orphaned_data) then "--purge_orphaned_data" else ""} \
      ~{if (no_purge_orphaned_data) then "--nopurge_orphaned_data" else ""} \
      ~{if defined(reload_interval) then ("--reload_interval " +  '"' + reload_interval + '"') else ""}
  >>>
  parameter_meta {
    logdir: "logdir specifies the directory where TensorBoard will\\nlook to find TensorFlow event files that it can\\ndisplay. TensorBoard will recursively walk the\\ndirectory structure rooted at logdir, looking for\\n.*tfevents.* files. You may also pass a comma\\nseparated list of log directories, and TensorBoard\\nwill watch each directory. You can also assign names\\nto individual log directories by putting a colon\\nbetween the name and the path, as in tensorboard\\n--logdir=name1:/path/to/logs/1,name2:/path/to/logs/2"
    run_app_debug: "[DEBUG]       Whether to run the app in debug mode. This increases\\nlog verbosity to DEBUG."
    no_debug: ""
    host: "What host to listen to. Defaults to serving on\\n0.0.0.0, set to 127.0.0.1 (localhost) todisable remote\\naccess (also quiets security warnings)."
    inspect: "[INSPECT]   Use this flag to print out a digest of your event\\nfiles to the command line, when no data is shown on\\nTensorBoard or the data shown looks weird. Example\\nusages: tensorboard --inspect\\n--event_file=myevents.out tensorboard --inspect\\n--event_file=myevents.out --tag=loss tensorboard\\n--inspect --logdir=mylogdir tensorboard --inspect\\n--logdir=mylogdir --tag=loss See\\ntensorflow/python/summary/event_file_inspector.py for\\nmore info and detailed usage."
    no_inspect: ""
    tag: "The particular tag to query for. Only used if"
    event_file: "The particular event file to query for. Only used if\\n--inspect is present and --logdir is not specified."
    port: "What port to serve TensorBoard on."
    purge_orphaned_data: "[PURGE_ORPHANED_DATA]\\nWhether to purge data that may have been orphaned due\\nto TensorBoard restarts. Disabling purge_orphaned_data\\ncan be used to debug data disappearance."
    no_purge_orphaned_data: ""
    reload_interval: "How often the backend should load more data.\\n"
    var_12: ""
  }
  output {
    File out_stdout = stdout()
  }
}