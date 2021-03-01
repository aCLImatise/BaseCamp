version 1.0

task OrientContigs {
  input {
    Boolean? skip
    File? repeats
    Int? redundancy
    Boolean? agressive
    Boolean? no_reduce
    Boolean? all
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    OrientContigs \
      ~{an_k} \
      ~{bank_name} \
      ~{if (skip) then "-skip" else ""} \
      ~{if defined(repeats) then ("-repeats " +  '"' + repeats + '"') else ""} \
      ~{if defined(redundancy) then ("-redundancy " +  '"' + redundancy + '"') else ""} \
      ~{if (agressive) then "-agressive" else ""} \
      ~{if (no_reduce) then "-noreduce" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    skip: ""
    repeats: ""
    redundancy: ""
    agressive: ""
    no_reduce: ""
    all: ""
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}