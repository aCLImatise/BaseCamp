version 1.0

task Tensorboard {
  input {
    File? logdir
    Boolean? run_app_verbosity
    Float? no_debug
    Boolean? inspect
    String? no_inspect
    File? event_file
    String? port
    Boolean? purge_orphaned_data
    String? no_purge_orphaned_data
    String? var_9
  }
  command <<<
    tensorboard \
      ~{var_9} \
      ~{if defined(logdir) then ("--logdir " +  '"' + logdir + '"') else ""} \
      ~{if (run_app_verbosity) then "--debug" else ""} \
      ~{if defined(no_debug) then ("--nodebug " +  '"' + no_debug + '"') else ""} \
      ~{if (inspect) then "--inspect" else ""} \
      ~{if defined(no_inspect) then ("--noinspect " +  '"' + no_inspect + '"') else ""} \
      ~{if defined(event_file) then ("--event_file " +  '"' + event_file + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (purge_orphaned_data) then "--purge_orphaned_data" else ""} \
      ~{if defined(no_purge_orphaned_data) then ("--nopurge_orphaned_data " +  '"' + no_purge_orphaned_data + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    logdir: "logdir specifies the directory where TensorBoard will\\nlook to find TensorFlow event files that it can\\ndisplay. TensorBoard will recursively walk the\\ndirectory structure rooted at logdir, looking for\\n.*tfevents.* files. You may also pass a comma\\nseparated list of log directories, and TensorBoard\\nwill watch each directory. You can also assign names\\nto individual log directories by putting a colon\\nbetween the name and the path, as in tensorboard\\n--logdir=name1:/path/to/logs/1,name2:/path/to/logs/2"
    run_app_verbosity: "[DEBUG]       Whether to run the app in debug mode. This increases\\nlog verbosity to DEBUG."
    no_debug: "What host to listen to. Defaults to serving on\\n0.0.0.0, set to 127.0.0.1 (localhost) todisable remote\\naccess (also quiets security warnings)."
    inspect: "[INSPECT]   Use this flag to print out a digest of your event\\nfiles to the command line, when no data is shown on\\nTensorBoard or the data shown looks weird. Example\\nusages: tensorboard --inspect\\n--event_file=myevents.out tensorboard --inspect\\n--event_file=myevents.out --tag=loss tensorboard\\n--inspect --logdir=mylogdir tensorboard --inspect\\n--logdir=mylogdir --tag=loss See\\ntensorflow/python/summary/event_file_inspector.py for\\nmore info and detailed usage."
    no_inspect: "The particular tag to query for. Only used if"
    event_file: "The particular event file to query for. Only used if\\n--inspect is present and --logdir is not specified."
    port: "What port to serve TensorBoard on."
    purge_orphaned_data: "[PURGE_ORPHANED_DATA]\\nWhether to purge data that may have been orphaned due\\nto TensorBoard restarts. Disabling purge_orphaned_data\\ncan be used to debug data disappearance."
    no_purge_orphaned_data: "How often the backend should load more data.\\n"
    var_9: ""
  }
  output {
    File out_stdout = stdout()
  }
}