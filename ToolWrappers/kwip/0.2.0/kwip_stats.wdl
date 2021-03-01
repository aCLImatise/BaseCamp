version 1.0

task Kwipstats {
  input {
    Boolean? threads
    Boolean? t_about
    Boolean? verbose
    Boolean? quiet
    String hashes
  }
  command <<<
    kwip_stats \
      ~{hashes} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (t_about) then "--tabout" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads: "Number of threads to utilise. [default N_CPUS]"
    t_about: "Output for tab-delimited sum table. [default stdout]"
    verbose: "Increase verbosity. May or may not acutally do anything."
    quiet: "Execute silently but for errors."
    hashes: ""
  }
  output {
    File out_stdout = stdout()
  }
}