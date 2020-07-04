version 1.0

task ProkkaHamapToHmm {
  input {
    Boolean? verbose
    String? datadir
    String? sep
    String? blank
  }
  command <<<
    prokka-hamap_to_hmm \
      ~{true="--verbose" false="" verbose} \
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
}