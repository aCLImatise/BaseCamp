version 1.0

task Pod2html {
  input {
    String? outfile
    Boolean? cache_dir
    Boolean? css
    Boolean? flush
    Boolean? html_dir
    Boolean? html_root
    Boolean? pod_path
    Boolean? pod_root
    Boolean? title
  }
  command <<<
    pod2html \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (cache_dir) then "--cachedir" else ""} \
      ~{if (css) then "--css" else ""} \
      ~{if (flush) then "--flush" else ""} \
      ~{if (html_dir) then "--htmldir" else ""} \
      ~{if (html_root) then "--htmlroot" else ""} \
      ~{if (pod_path) then "--podpath" else ""} \
      ~{if (pod_root) then "--podroot" else ""} \
      ~{if (title) then "--title" else ""}
  >>>
  parameter_meta {
    outfile: "--podpath=<name>:...:<name> --podroot=<name>\\n--cachedir=<name> --flush --recurse --norecurse\\n--quiet --noquiet --verbose --noverbose\\n--index --noindex --backlink --nobacklink\\n--header --noheader --poderrors --nopoderrors\\n--css=<URL> --title=<name>"
    cache_dir: "- directory for the directory cache files."
    css: "- stylesheet URL"
    flush: "- flushes the directory cache."
    html_dir: "- directory for resulting HTML files."
    html_root: "- http-server base directory from which all relative paths\\nin podpath stem (default is /)."
    pod_path: "- colon-separated list of directories containing library\\npods (empty by default)."
    pod_root: "- filesystem base directory from which all relative paths\\nin podpath stem (default is .)."
    title: "- title that will appear in resulting html file."
  }
  output {
    File out_stdout = stdout()
  }
}