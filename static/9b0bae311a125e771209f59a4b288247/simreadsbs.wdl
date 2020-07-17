version 1.0

task Simreadsbs {
  input {
    Boolean? name_output_file
    Boolean? reads
    Boolean? width
    Boolean? err
    Boolean? verbose
    Boolean? fast_q
    Boolean? prob
    Boolean? meth
    Boolean? bs
    Boolean? ag
    Boolean? seed
    Boolean? about
    String fast_a_chrom_files
  }
  command <<<
    simreadsbs \
      ~{fast_a_chrom_files} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-reads" false="" reads} \
      ~{true="-width" false="" width} \
      ~{true="-err" false="" err} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-fastq" false="" fast_q} \
      ~{true="-prob" false="" prob} \
      ~{true="-meth" false="" meth} \
      ~{true="-bs" false="" bs} \
      ~{true="-ag" false="" ag} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    reads: "number of reads to simulate "
    width: "width of reads to simulate "
    err: "maximum number of simulated sequencing errors "
    verbose: "print more run info "
    fast_q: "write FASTQ format reads "
    prob: "prb output file "
    meth: "rate of CpG methylation "
    bs: "rate of bisulfite conversion "
    ag: "generate A/G wildcard reads "
    seed: "random number seed "
    about: "print about message "
    fast_a_chrom_files: ""
  }
}