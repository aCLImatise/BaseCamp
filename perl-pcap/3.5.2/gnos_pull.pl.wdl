version 1.0

task GnosPullpl {
  input {
    Boolean? analysis
    Boolean? outdir
    Boolean? config
    Boolean? symlinks
    Boolean? threads
    Boolean? url
    Boolean? info
    Boolean? debug
    Boolean? man
  }
  command <<<
    gnos_pull_pl \
      ~{if (analysis) then "--analysis" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (symlinks) then "--symlinks" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (url) then "--url" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    analysis: "(-a)  ALIGNMENTS or CALLS"
    outdir: "(-o)  Where to save jsonl and resulting GNOS downloads"
    config: "(-c)  Mapping of GNOS repos to permissions keys"
    symlinks: "(-s)  Rebuild symlinks only."
    threads: "(-t)  Number of parallel GNOS retrievals."
    url: "(-u)  The base URL to retrieve jsonl file from\\n[http://pancancer.info/gnos_metadata/latest/]"
    info: "(-i)  Just prints how many donor's will be included in pull and some stats."
    debug: "(-d)  prints extra debug information"
    man: "(-m)  More verbose usage info"
  }
  output {
    File out_stdout = stdout()
  }
}