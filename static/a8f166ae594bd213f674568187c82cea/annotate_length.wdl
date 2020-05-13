version 1.0

task AnnotateLength.py {
  input {
    String iI
    String oO
    String? inputInputFastX
    String? outputOutputFastX
  }
  command <<<
    annotate_length.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{outputOutputFastX}
  >>>
}