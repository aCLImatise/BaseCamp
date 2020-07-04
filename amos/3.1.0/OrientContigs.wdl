version 1.0

task OrientContigs {
  input {
    Boolean? b
    Boolean? all
    Boolean? no_reduce
    Boolean? agressive
    Int? redundancy
    File? repeats
    Boolean? skip
    String? an_k
    String bank_name
  }
  command <<<
    OrientContigs \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b} \
      ~{true="-all" false="" all} \
      ~{true="-noreduce" false="" no_reduce} \
      ~{true="-agressive" false="" agressive} \
      ~{if defined(redundancy) then ("-redundancy " +  '"' + redundancy + '"') else ""} \
      ~{if defined(repeats) then ("-repeats " +  '"' + repeats + '"') else ""} \
      ~{true="-skip" false="" skip}
  >>>
  parameter_meta {
    b: ""
    all: ""
    no_reduce: ""
    agressive: ""
    redundancy: ""
    repeats: ""
    skip: ""
    an_k: ""
    bank_name: ""
  }
}