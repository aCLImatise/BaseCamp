version 1.0

task Simreadspe {
  input {
    Boolean? name_output_file
    Boolean? reads
    Boolean? width
    Boolean? min_sep
    Boolean? max_sep
    Boolean? err
    Boolean? verbose
    Boolean? fast_q
    Boolean? prob
    Boolean? seed
    Boolean? about
    String fast_a_chrom_files
  }
  command <<<
    simreadspe \
      ~{fast_a_chrom_files} \
      ~{true="-output" false="" name_output_file} \
      ~{true="-reads" false="" reads} \
      ~{true="-width" false="" width} \
      ~{true="-min-sep" false="" min_sep} \
      ~{true="-max-sep" false="" max_sep} \
      ~{true="-err" false="" err} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-fastq" false="" fast_q} \
      ~{true="-prob" false="" prob} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    name_output_file: "Name of output file (default: stdout) "
    reads: "number of reads to simulate "
    width: "width of reads to simulate "
    min_sep: "min fragment length "
    max_sep: "max fragment length "
    err: "maximum number of simulated sequencing errors "
    verbose: "print more run info "
    fast_q: "write FASTQ format reads "
    prob: "prb output file "
    seed: "random number seed "
    about: "print about message "
    fast_a_chrom_files: ""
  }
}