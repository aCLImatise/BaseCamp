version 1.0

task AlleleCounter.pl {
  input {
    String allele_counts_do_tpl
  }
  command <<<
    alleleCounter.pl \
      ~{allele_counts_do_tpl}
  >>>
  parameter_meta {
    allele_counts_do_tpl: "Required: -bam      -b      BWA bam file (expects co-located index) -output   -o      Output file -minqual  -m      Minimum base quality to include (integer) [30] -mapqual  -q      Minimum mapping quality of read (integer) [35] -loci     -l      Alternate loci file (just needs chr pos) - output is different, counts for each residue Optional: -help     -h      This message -version  -v      Version number"
  }
}