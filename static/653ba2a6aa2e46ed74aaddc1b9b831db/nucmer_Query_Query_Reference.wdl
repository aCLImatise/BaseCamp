version 1.0

task NucmerQueryQueryReference {
  input {
    String? referenceReference
    String? queryQuery
  }
  command <<<
    nucmer Query Query Reference \
      ~{referenceReference} \
      ~{queryQuery}
  >>>
}