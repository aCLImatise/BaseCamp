version 1.0

task FastaStats {
  input {
    Boolean? verbose
    Array[String] fast_a
    String? out
  }
  command <<<
    fasta_stats \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    verbose: "verbose"
    fast_a: "FASTA file(s)"
    out: "output stream    [stdout]"
  }
  output {
    File out_stdout = stdout()
  }
}