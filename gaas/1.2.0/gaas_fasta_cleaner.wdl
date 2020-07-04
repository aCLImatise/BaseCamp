version 1.0

task GaasFastaCleaner.pl {
  input {
    String? fast_a
    Boolean? add_verbosity
    String? outfile
  }
  command <<<
    gaas_fasta_cleaner.pl \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="-v" false="" add_verbosity} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "Input fasta file."
    add_verbosity: "Add verbosity"
    outfile: "Output fasta file. If no output file is specified, the output will be written to STDOUT."
  }
}