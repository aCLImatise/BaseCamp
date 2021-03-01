version 1.0

task ProkkacddToHmm {
  input {
    Boolean? verbose
    String? srcdir
    String? lib
    Boolean? force
  }
  command <<<
    prokka_cdd_to_hmm \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(srcdir) then ("--srcdir " +  '"' + srcdir + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "!      Verbose output (default '0')."
    srcdir: "CDD download dir (default '/bio/data/cdd/latest/')."
    lib: "Subset of CDD to create (default 'COG')."
    force: "!        Force overwrite of output files: LIB.aln LIB.hmm (default '0')."
  }
  output {
    File out_stdout = stdout()
  }
}