version 1.0

task MykrobePanelsUpdateMetadata {
  input {
    Directory? panels_dir
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    mykrobe panels update_metadata \
      ~{if defined(panels_dir) then ("--panels_dir " +  '"' + panels_dir + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2"
  }
  parameter_meta {
    panels_dir: "Name of directory that contains panel data. Default:\\n/usr/local/lib/python3.6/site-packages/mykrobe/data"
    quiet: "Only output warnings/errors to stderr"
    debug: "Output debugging information to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}