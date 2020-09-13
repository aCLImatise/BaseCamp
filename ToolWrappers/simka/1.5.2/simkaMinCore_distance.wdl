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
      ~{if (in_one) then "-in1" else ""} \
      ~{if (in_two) then "-in2" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (start_i) then "-start-i" else ""} \
      ~{if (start_j) then "-start-j" else ""} \
      ~{if (n_i) then "-n-i" else ""} \
      ~{if (n_j) then "-n-j" else ""}
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
  output {
    File out_stdout = stdout()
  }
}