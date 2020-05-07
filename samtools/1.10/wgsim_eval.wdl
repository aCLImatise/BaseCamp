version 1.0

task WgsimEval.plUniqcmp {
  input {
    Int qQ
    Int sS
    Int bB
    String? in1samIn1sam
    String? in2samIn2sam
  }
  command <<<
    wgsim_eval.pl uniqcmp \
      ~{in1samIn1sam} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{in2samIn2sam}
  >>>
}