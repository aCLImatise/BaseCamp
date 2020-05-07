version 1.0

task NucmerReference {
  input {
    String? referenceReference
    String? queryQuery
  }
  command <<<
    nucmer Reference \
      ~{referenceReference} \
      ~{queryQuery}
  >>>
}