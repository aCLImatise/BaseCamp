version 1.0

task Promer {
  input {
    Boolean xX
    String? referenceReference
    String? queryQuery
  }
  command <<<
    promer \
      ~{referenceReference} \
      ~{true="-x" false="" xX} \
      ~{queryQuery}
  >>>
}