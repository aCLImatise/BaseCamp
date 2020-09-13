version 1.0

task MinAbundanceFinderpl {
  input {
    Boolean? gt
    Boolean? km_er
    Int? num_cpus
    String misc
  }
  command <<<
    min_abundance_finder_pl \
      ~{misc} \
      ~{if (gt) then "--gt" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if defined(num_cpus) then ("--numcpus " +  '"' + num_cpus + '"') else ""}
  >>>
  parameter_meta {
    gt: "1   Look for the first peak at this kmer count\\nand then the next valley."
    km_er: "21  kmer length"
    num_cpus: "This script will apply one thread per kmer\\nlength. Multiple values of k are tested to\\nget a consensus value."
    misc: "--kmerCounter ''  The kmer counting program to use.\\nDefault: (empty string) auto-choose\\nOptions: perl, jellyfish\\nat /usr/local/bin/min_abundance_finder.pl line 46.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}