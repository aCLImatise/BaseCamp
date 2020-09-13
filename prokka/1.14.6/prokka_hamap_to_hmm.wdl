version 1.0

task ProkkahamapToHmm {
  input {
    Boolean? verbose
    File? datadir
    String? sep
    String? blank
  }
  command <<<
    prokka_hamap_to_hmm \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(datadir) then ("--datadir " +  '"' + datadir + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(blank) then ("--blank " +  '"' + blank + '"') else ""}
  >>>
  parameter_meta {
    verbose: "!      Verbose progress (default '0')."
    datadir: "Path to downloaded HAMAP folder (ftp://ftp.expasy.org/databases/hamap/) (default '')."
    sep: "Separator between EC/gene/product (default '~~~')."
    blank: "Replace empty EC/gene/product with this (default '')."
  }
  output {
    File out_stdout = stdout()
  }
}