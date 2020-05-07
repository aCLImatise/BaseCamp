version 1.0

task NucmerQueryReferenceReference {
  input {
    String? referenceReference
    String? queryQuery
  }
  command <<<
    nucmer Query Reference Reference \
      ~{referenceReference} \
      ~{queryQuery}
  >>>
}