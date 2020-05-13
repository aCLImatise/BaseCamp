version 1.0

task FaAlign {
  input {
    String useUse
    String? targetTargetFa
    String? queryQueryFa
    String? outputOutputAxt
  }
  command <<<
    faAlign \
      ~{targetTargetFa} \
      ~{if defined(useUse) then ("- use " +  '"' + useUse + '"') else ""} \
      ~{queryQueryFa} \
      ~{outputOutputAxt}
  >>>
}