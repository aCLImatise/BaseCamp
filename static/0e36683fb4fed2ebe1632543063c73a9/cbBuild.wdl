version 1.0

task CbBuild {
  input {
    Boolean? in_it
    File? in_conf
    Directory? outdir
    String? port
    Boolean? recursive
    String? redo
    Directory directory
  }
  command <<<
    cbBuild \
      ~{directory} \
      ~{if (in_it) then "--init" else ""} \
      ~{if defined(in_conf) then ("--inConf " +  '"' + in_conf + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if defined(redo) then ("--redo " +  '"' + redo + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    in_it: "copy sample cellbrowser.conf and desc.conf to current"
    in_conf: "a cellbrowser.conf file that specifies labels and all\\ninput files, default is ./cellbrowser.conf, can be\\nspecified multiple times"
    outdir: "output directory, default can be set through the env.\\nvariable CBOUT or ~/.cellbrowser.conf, current value:\\nnone"
    port: "if build is successful, start an http server on this\\nport and serve the result via http://localhost:port"
    recursive: "run in all subdirectories of the current directory.\\nUseful when rebuilding a full hierarchy."
    redo: "do not use cached old data. Can be: 'meta' or 'matrix'\\n(matrix includes meta).\\n"
    directory: "-d, --debug           show debug messages"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}