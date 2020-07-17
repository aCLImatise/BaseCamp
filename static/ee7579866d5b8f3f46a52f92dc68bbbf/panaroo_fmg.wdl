version 1.0

task PanarooFmg {
  input {
    String? tree
    String? pa
    String? outfile
    String? n_boot
    String? threads
    Boolean? verbose
    String pana_roo_fmg_est
  }
  command <<<
    panaroo-fmg \
      ~{pana_roo_fmg_est} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(pa) then ("--pa " +  '"' + pa + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(n_boot) then ("--nboot " +  '"' + n_boot + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    tree: "A dated phylogeny."
    pa: "A presence/absence produced by Panaroo."
    outfile: "Name of outputfile."
    n_boot: "The number of sub-sampling bootstrap iterations to perform."
    threads: "number of threads to use (default=1)"
    verbose: "print additional output"
    pana_roo_fmg_est: ""
  }
}