version 1.0

task NucmerQueryReferenceQuery {
  input {
    String? referenceReference
    String? queryQuery
  }
  command <<<
    nucmer Query Reference Query \
      ~{referenceReference} \
      ~{queryQuery}
  >>>
}