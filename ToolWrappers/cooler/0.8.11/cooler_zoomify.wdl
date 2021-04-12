version 1.0

task CoolerZoomify {
  input {
    Int? nproc
    Int? chunksize
    Int? resolutions
    Boolean? balance
    Int? balance_args
    String? base_uri
    File? out
    String? field
    Boolean? legacy
    String levels_dot
  }
  command <<<
    cooler zoomify \
      ~{levels_dot} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""} \
      ~{if defined(resolutions) then ("--resolutions " +  '"' + resolutions + '"') else ""} \
      ~{if (balance) then "--balance" else ""} \
      ~{if defined(balance_args) then ("--balance-args " +  '"' + balance_args + '"') else ""} \
      ~{if defined(base_uri) then ("--base-uri " +  '"' + base_uri + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(field) then ("--field " +  '"' + field + '"') else ""} \
      ~{if (legacy) then "--legacy" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0"
  }
  parameter_meta {
    nproc: "Number of processes to use for batch processing\\nchunks of pixels [default: 1, i.e. no process pool]"
    chunksize: "Number of pixels allocated to each process\\n[default: 10000000]"
    resolutions: "Comma-separated list of target resolutions. Use\\nsuffixes B or N to specify a progression: B for\\nbinary (geometric steps of factor 2), N for nice\\n(geometric steps of factor 10 interleaved with\\nsteps of 2 and 5). Examples:\\n1000B=1000,2000,4000,8000,...\\n1000N=1000,2000,5000,10000,...\\n5000N=5000,10000,25000,50000,... 4DN is an alias\\nfor 1000,2000,5000N [default: B]"
    balance: "Apply balancing to each zoom level. Off by default."
    balance_args: "Additional arguments to pass to cooler balance. To\\ndeal with space ambiguity, use quotes to pass\\nmultiple arguments, e.g. --balance-args '--nproc 8\\n--ignore-diags 3' Note that nproc for balancing\\nmust be specified independently of zoomify\\narguments."
    base_uri: "One or more additional base coolers to aggregate\\nfrom, if needed."
    out: "Output file or URI"
    field: "Specify the names of value columns to merge as\\n'<name>'. Repeat the `--field` option for each one.\\nUse '<name>:dtype=<dtype>' to specify the dtype.\\nInclude ',agg=<agg>' to specify an aggregation\\nfunction different from 'sum'."
    legacy: "Use the legacy layout of integer-labeled zoom"
    levels_dot: "-h, --help               Show this message and exit."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}