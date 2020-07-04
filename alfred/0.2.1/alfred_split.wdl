version 1.0

task AlfredSplit {
  input {
    Boolean? arg_min_quality
    Boolean? arg_reference_fasta
    Boolean? p
    Boolean? q
    Boolean? arg_na_sample
    Boolean? arg_input_phased
    Boolean? assign_unphased_reads
    Boolean? single_haplotypetagged_bam
    String un_phased_dot_bam
  }
  command <<<
    alfred split \
      ~{un_phased_dot_bam} \
      ~{true="-m" false="" arg_min_quality} \
      ~{true="-r" false="" arg_reference_fasta} \
      ~{true="-p" false="" p} \
      ~{true="-q" false="" q} \
      ~{true="-s" false="" arg_na_sample} \
      ~{true="-v" false="" arg_input_phased} \
      ~{true="-a" false="" assign_unphased_reads} \
      ~{true="-i" false="" single_haplotypetagged_bam}
  >>>
  parameter_meta {
    arg_min_quality: "[ --map-qual ] arg (=10)     min. mapping quality"
    arg_reference_fasta: "[ --reference ] arg          reference fasta file"
    p: "[ --hap1 ] arg (=\"h1.bam\")   haplotype1 output file"
    q: "[ --hap2 ] arg (=\"h2.bam\")   haplotype2 output file"
    arg_na_sample: "[ --sample ] arg (=NA12878)  sample name (as in BCF)"
    arg_input_phased: "[ --vcffile ] arg            input phased VCF/BCF file"
    assign_unphased_reads: "[ --assign ]                 assign unphased reads randomly"
    single_haplotypetagged_bam: "[ --interleaved ]            single haplotype-tagged BAM"
    un_phased_dot_bam: ""
  }
}