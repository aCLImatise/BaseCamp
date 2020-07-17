version 1.0

task CbBuild {
  input {
    Boolean? in_it
    Boolean? debug
    String? in_conf
    String? outdir
    String? port
    Boolean? recursive
    String? redo
  }
  command <<<
    cbBuild \
      ~{true="--init" false="" in_it} \
      ~{true="--debug" false="" debug} \
      ~{if defined(in_conf) then ("--inConf " +  '"' + in_conf + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{if defined(redo) then ("--redo " +  '"' + redo + '"') else ""}
  >>>
  parameter_meta {
    in_it: "copy sample cellbrowser.conf and desc.conf to current directory"
    debug: "show debug messages"
    in_conf: "a cellbrowser.conf file that specifies labels and all input files, default is ./cellbrowser.conf, can be specified multiple times"
    outdir: "output directory, default can be set through the env. variable CBOUT or ~/.cellbrowser.conf, current value: none"
    port: "if build is successful, start an http server on this port and serve the result via http://localhost:port"
    recursive: "run in all subdirectories of the current directory. Useful when rebuilding a full hierarchy."
    redo: "do not use cached old data. Can be: 'meta' or 'matrix' (matrix includes meta)."
  }
}