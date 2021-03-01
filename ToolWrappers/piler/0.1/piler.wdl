version 1.0

task Piler {
  input {
    String? trs
    File? rep
    String? an_not
    File? out
    File? cons
    File? path
    File? seq
    File? trs_two_fast_a
  }
  command <<<
    piler \
      ~{if defined(trs) then ("-trs " +  '"' + trs + '"') else ""} \
      ~{if defined(rep) then ("-rep " +  '"' + rep + '"') else ""} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(cons) then ("-cons " +  '"' + cons + '"') else ""} \
      ~{if defined(path) then ("-path " +  '"' + path + '"') else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(trs_two_fast_a) then ("-trs2fasta " +  '"' + trs_two_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trs: ":\\n-mincover <n>\\n-maxlengthdiffpct <n>\\n-piles <pilefile>\\n-images <imagefile>\\n-multihit"
    rep: ""
    an_not: ""
    out: ""
    cons: ""
    path: ""
    seq: ""
    trs_two_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}