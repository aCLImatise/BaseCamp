version 1.0

task Pod2html {
  input {
    Boolean? cache_dir
    Boolean? css
    Boolean? flush
    Boolean? html_dir
    Boolean? html_root
    Boolean? in_file
    File? outfile
    Boolean? pod_path
    Boolean? pod_root
    Boolean? title
  }
  command <<<
    pod2html \
      ~{if (cache_dir) then "--cachedir" else ""} \
      ~{if (css) then "--css" else ""} \
      ~{if (flush) then "--flush" else ""} \
      ~{if (html_dir) then "--htmldir" else ""} \
      ~{if (html_root) then "--htmlroot" else ""} \
      ~{if (in_file) then "--infile" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (pod_path) then "--podpath" else ""} \
      ~{if (pod_root) then "--podroot" else ""} \
      ~{if (title) then "--title" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cache_dir: "- directory for the directory cache files."
    css: "- stylesheet URL"
    flush: "- flushes the directory cache."
    html_dir: "- directory for resulting HTML files."
    html_root: "- http-server base directory from which all relative paths\\nin podpath stem (default is /)."
    in_file: "- filename for the pod to convert (input taken from stdin\\nby default)."
    outfile: "- filename for the resulting html file (output sent to\\nstdout by default)."
    pod_path: "- colon-separated list of directories containing library\\npods (empty by default)."
    pod_root: "- filesystem base directory from which all relative paths\\nin podpath stem (default is .)."
    title: "- title that will appear in resulting html file."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}