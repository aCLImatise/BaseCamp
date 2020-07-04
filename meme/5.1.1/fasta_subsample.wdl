version 1.0

task FastaSubsample {
  input {
    String? seed
    Boolean? nor_and
    String? rest
    String fast_a
    String n
  }
  command <<<
    fasta-subsample \
      ~{fast_a} \
      ~{n} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{true="-norand" false="" nor_and} \
      ~{if defined(rest) then ("-rest " +  '"' + rest + '"') else ""}
  >>>
  parameter_meta {
    seed: ""
    nor_and: ""
    rest: ""
    fast_a: ""
    n: ""
  }
}