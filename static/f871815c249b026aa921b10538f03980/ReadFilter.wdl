version 1.0

task ReadFilter {
  input {
    Boolean? unmapped_only
    Boolean? flank_length
    Boolean? gap_length
    Boolean? breakpoint
    Boolean? scaffold
    Boolean? std_dev
    Boolean? mean
    Boolean? reads
    Boolean? bam
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
  }
  command <<<
    ReadFilter \
      ~{true="-unmapped-only" false="" unmapped_only} \
      ~{true="-flank-length" false="" flank_length} \
      ~{true="-gap-length" false="" gap_length} \
      ~{true="-breakpoint" false="" breakpoint} \
      ~{true="-scaffold" false="" scaffold} \
      ~{true="-std-dev" false="" std_dev} \
      ~{true="-mean" false="" mean} \
      ~{true="-reads" false="" reads} \
      ~{true="-bam" false="" bam} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-version" false="" version}
  >>>
  parameter_meta {
    unmapped_only: "(0 arg) :    Output unmapped reads"
    flank_length: "(1 arg) :    Flank length  [default '-1']"
    gap_length: "(1 arg) :    Gap length (in the scaffold)  [default '-1']"
    breakpoint: "(1 arg) :    Gap breakpoint position"
    scaffold: "(1 arg) :    Scaffold name"
    std_dev: "(1 arg) :    Insert size standard deviation"
    mean: "(1 arg) :    Mean insert size"
    reads: "(1 arg) :    FASTA-formatted output file"
    bam: "(1 arg) :    Aligned BAM file"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
  }
}