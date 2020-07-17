version 1.0

task SimkaMerge {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? km_er_size
    Boolean? in
    Boolean? out_tmp_sim_ka
    Boolean? partition_id
    Boolean? max_memory
    Boolean? km_er_shannon_index
    Boolean? simple_dist
    Boolean? complex_dist
  }
  command <<<
    simkaMerge \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-in" false="" in} \
      ~{true="-out-tmp-simka" false="" out_tmp_sim_ka} \
      ~{true="-partition-id" false="" partition_id} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-kmer-shannon-index" false="" km_er_shannon_index} \
      ~{true="-simple-dist" false="" simple_dist} \
      ~{true="-complex-dist" false="" complex_dist}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    km_er_size: "(1 arg) :    kmer size"
    in: "(1 arg) :    input filename"
    out_tmp_sim_ka: "(1 arg) :    tmp output"
    partition_id: "(1 arg) :    bank name"
    max_memory: "(1 arg) :    bank name"
    km_er_shannon_index: "(1 arg) :    bank name"
    simple_dist: "(0 arg) :    compute simple distances"
    complex_dist: "(0 arg) :    compute complex distances"
  }
}