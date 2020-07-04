version 1.0

task ProkkaCddToHmm {
  input {
    Boolean? verbose
    String? srcdir
    String? lib
    Boolean? force
  }
  command <<<
    prokka-cdd_to_hmm \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(srcdir) then ("--srcdir " +  '"' + srcdir + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    verbose: "!      Verbose output (default '0')."
    srcdir: "CDD download dir (default '/bio/data/cdd/latest/')."
    lib: "Subset of CDD to create (default 'COG')."
    force: "!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."
  }
}