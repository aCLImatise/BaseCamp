version 1.0

task AxtSwapDest.axt {
  input {
    String? sourceSourceAxt
    String? targetTargetSizes
    String? queryQuerySizes
    String? desDesTaxT
  }
  command <<<
    axtSwap dest.axt \
      ~{sourceSourceAxt} \
      ~{targetTargetSizes} \
      ~{queryQuerySizes} \
      ~{desDesTaxT}
  >>>
}