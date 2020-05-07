version 1.0

task Circulargenerator {
  input {
    String elongationElongation
    String inputInput
    String seqSeq
  }
  command <<<
    circulargenerator \
      ~{if defined(elongationElongation) then ("--elongation " +  '"' + elongationElongation + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""}
  >>>
}