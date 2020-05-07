version 1.0

task GraftM {
  input {
    String? graftGraftM
    String? utilitiesUtilities
  }
  command <<<
    graftM \
      ~{graftGraftM} \
      ~{utilitiesUtilities}
  >>>
}