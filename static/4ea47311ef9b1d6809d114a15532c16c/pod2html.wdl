version 1.0

task Pod2html {
  input {
    String? outfile
    String? pod_path
    String? no_recurse
    Boolean? no_verbose
    Boolean? no_back_link
    Boolean? no_pod_errors
    String? title
    Boolean? html_dir
    Boolean? html_root
    Boolean? pod_root
  }
  command <<<
    pod2html \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(pod_path) then ("--podpath " +  '"' + pod_path + '"') else ""} \
      ~{if defined(no_recurse) then ("--norecurse " +  '"' + no_recurse + '"') else ""} \
      ~{if (no_verbose) then "--noverbose" else ""} \
      ~{if (no_back_link) then "--nobacklink" else ""} \
      ~{if (no_pod_errors) then "--nopoderrors" else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if (html_dir) then "--htmldir" else ""} \
      ~{if (html_root) then "--htmlroot" else ""} \
      ~{if (pod_root) then "--podroot" else ""}
  >>>
  parameter_meta {
    outfile: ""
    pod_path: ":...:<name> --podroot=<name>"
    no_recurse: ""
    no_verbose: ""
    no_back_link: ""
    no_pod_errors: ""
    title: ""
    html_dir: "- directory for resulting HTML files."
    html_root: "- http-server base directory from which all relative paths\\nin podpath stem (default is /)."
    pod_root: "- filesystem base directory from which all relative paths\\nin podpath stem (default is .)."
  }
  output {
    File out_stdout = stdout()
  }
}