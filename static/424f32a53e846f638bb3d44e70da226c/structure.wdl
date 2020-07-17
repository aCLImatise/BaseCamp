version 1.0

task Structure.py {
  input {
    Int? number_of_populations
    File? pathtoinputfile
    File? pathtooutputfile
    Float? to_l
    String? prior
    Int? cv
    String? format
    Boolean? full
    Int? seed
    String python
  }
  command <<<
    structure.py \
      ~{python} \
      ~{if defined(number_of_populations) then ("-K " +  '"' + number_of_populations + '"') else ""} \
      ~{if defined(pathtoinputfile) then ("--input " +  '"' + pathtoinputfile + '"') else ""} \
      ~{if defined(pathtooutputfile) then ("--output " +  '"' + pathtooutputfile + '"') else ""} \
      ~{if defined(to_l) then ("--tol " +  '"' + to_l + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(cv) then ("--cv " +  '"' + cv + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--full" false="" full} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    number_of_populations: "(number of populations)"
    pathtoinputfile: "(/path/to/input/file)"
    pathtooutputfile: "(/path/to/output/file)"
    to_l: "(convergence criterion; default: 10e-6)"
    prior: "(choice of prior; default: simple)"
    cv: "(number of test sets for cross-validation, 0 implies no CV step; default: 0)"
    format: "(format of input file; default: bed)"
    full: "(to output all variational parameters; optional)"
    seed: "(manually specify seed for random number generator; optional)"
    python: ""
  }
}