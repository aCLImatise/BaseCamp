version 1.0

task Mapsembler2Extremities {
  input {
    Boolean? arg_kmer_size
    Boolean? starters
    Boolean? reads
    Boolean? arg_output_substarters
    Boolean? min_solid_sub_km_er
    Boolean? debug
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    mapsembler2_extremities \
      ~{true="--k" false="" arg_kmer_size} \
      ~{true="--starters" false="" starters} \
      ~{true="--reads" false="" reads} \
      ~{true="--output" false="" arg_output_substarters} \
      ~{true="--min-solid-subkmer" false="" min_solid_sub_km_er} \
      ~{true="-debug" false="" debug} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    arg_kmer_size: "(1 arg) :    kmer size that will be used for mapsembler2  [default '']"
    starters: "(1 arg) :    starters fasta file  [default '']"
    reads: "(1 arg) :    reads dataset file name. Several reads sets can be provided, surrounded by \"'s and separated by a space (e.g. --reads \"reads1.fa reads2.fa\")  [default '']"
    arg_output_substarters: "(1 arg) :    output substarters file name  [default '']"
    min_solid_sub_km_er: "(1 arg) :    minimim abundance to keep a subkmer  [default '3']"
    debug: "(0 arg) :    debugging"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}