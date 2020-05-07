version 1.0

task Humann2RnaDnaNorm {
  input {
    String inputInputDna
    String inputInputRna
    String outputOutputBasename
    String methodMethod
    Boolean logLogTransform
    String logLogBase
  }
  command <<<
    humann2_rna_dna_norm \
      ~{if defined(inputInputDna) then ("--input_dna " +  '"' + inputInputDna + '"') else ""} \
      ~{if defined(inputInputRna) then ("--input_rna " +  '"' + inputInputRna + '"') else ""} \
      ~{if defined(outputOutputBasename) then ("--output_basename " +  '"' + outputOutputBasename + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{true="--log_transform" false="" logLogTransform} \
      ~{if defined(logLogBase) then ("--log_base " +  '"' + logLogBase + '"') else ""}
  >>>
}