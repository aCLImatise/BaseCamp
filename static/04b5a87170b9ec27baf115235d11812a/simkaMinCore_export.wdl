version 1.0

task SimkaMinCoreExport {
  input {
    Boolean? in
    Boolean? in_one
    Boolean? in_two
    Boolean? out
    Boolean? nb_cores
    Boolean? verbose
  }
  command <<<
    simkaMinCore export \
      ~{true="-in" false="" in} \
      ~{true="-in1" false="" in_one} \
      ~{true="-in2" false="" in_two} \
      ~{true="-out" false="" out} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    in: "(1 arg) :    input dir containing distance matrices in binary format (-out argument of ./simkaMin distance)"
    in_one: "(1 arg) :    first used sketch file (-in1 argument of ./simkaMin distance)"
    in_two: "(1 arg) :    second used sketch file (-in2 argument of ./simkaMin distance)"
    out: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
}