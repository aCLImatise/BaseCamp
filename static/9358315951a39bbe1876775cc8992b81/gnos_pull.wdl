version 1.0

task GnosPull.pl {
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
    gnos_pull.pl \
      ~{true="--analysis" false="" analysis} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--config" false="" config} \
      ~{true="--symlinks" false="" symlinks} \
      ~{true="--threads" false="" threads} \
      ~{true="--url" false="" url} \
      ~{true="--info" false="" info} \
      ~{true="--debug" false="" debug} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    analysis: "(-a)  ALIGNMENTS or CALLS"
    outdir: "(-o)  Where to save jsonl and resulting GNOS downloads"
    config: "(-c)  Mapping of GNOS repos to permissions keys"
    symlinks: "(-s)  Rebuild symlinks only."
    threads: "(-t)  Number of parallel GNOS retrievals."
    url: "(-u)  The base URL to retrieve jsonl file from [http://pancancer.info/gnos_metadata/latest/]"
    info: "(-i)  Just prints how many donor's will be included in pull and some stats."
    debug: "(-d)  prints extra debug information"
    man: "(-m)  More verbose usage info"
  }
}