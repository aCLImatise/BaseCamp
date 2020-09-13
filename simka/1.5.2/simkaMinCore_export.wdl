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
      ~{if (in) then "-in" else ""} \
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    in: "(1 arg) :    input dir containing distance matrices in binary format (-out argument of ./simkaMin distance)"
    in_one: "(1 arg) :    first used sketch file (-in1 argument of ./simkaMin distance)"
    in_two: "(1 arg) :    second used sketch file (-in2 argument of ./simkaMin distance)"
    out: "(1 arg) :    output dir for distance matrices  [default './simkaMin_results']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
  }
  output {
    File out_stdout = stdout()
  }
}