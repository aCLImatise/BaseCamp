version 1.0

task SimkaMinCoreDistance {
  input {
    Boolean? in_one
    Boolean? in_two
    Boolean? out
    Boolean? nb_cores
    Boolean? verbose
    Boolean? start_i
    Boolean? start_j
    Boolean? n_i
    Boolean? n_j
  }
  command <<<
    simkaMinCore distance \
      ~{true="-in1" false="" in_one} \
      ~{true="-in2" false="" in_two} \
      ~{true="-out" false="" out} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-start-i" false="" start_i} \
      ~{true="-start-j" false="" start_j} \
      ~{true="-n-i" false="" n_i} \
      ~{true="-n-j" false="" n_j}
  >>>
  parameter_meta {
    in_one: "(1 arg) :    filename to a sketch file to compare with -in2"
    in_two: "(1 arg) :    filename to a sketch file to compare with -in1"
    out: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    start_i: "(1 arg) :    start i (row)  [default '0']"
    start_j: "(1 arg) :    start j (column)  [default '0']"
    n_i: "(1 arg) :    Nb datasets to process (row)  [default '0']"
    n_j: "(1 arg) :    Nb datasets to process (column)  [default '0']"
  }
}