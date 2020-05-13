version 1.0

task CheckAnnotations.py {
  input {
    String rR
    String dD
    String tTEnds
    String cCEnds
    String aAEnds
    Int lLThreshold
    Boolean similaritySimilarity
    String sSThreshold
    String? pythonPython
    String? thisThisScriptPy
    String? queryQueryGb
  }
  command <<<
    check_annotations.py \
      ~{pythonPython} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(tTEnds) then ("--t-ends " +  '"' + tTEnds + '"') else ""} \
      ~{if defined(cCEnds) then ("--c-ends " +  '"' + cCEnds + '"') else ""} \
      ~{if defined(aAEnds) then ("--a-ends " +  '"' + aAEnds + '"') else ""} \
      ~{if defined(lLThreshold) then ("--l-threshold " +  '"' + lLThreshold + '"') else ""} \
      ~{true="--similarity" false="" similaritySimilarity} \
      ~{if defined(sSThreshold) then ("--s-threshold " +  '"' + sSThreshold + '"') else ""} \
      ~{thisThisScriptPy} \
      ~{queryQueryGb}
  >>>
}