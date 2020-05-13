version 1.0

task NucmerQueryQueryQuery {
  input {
    String? referenceReference
    String? queryQuery
  }
  command <<<
    nucmer Query Query Query \
      ~{referenceReference} \
      ~{queryQuery}
  >>>
}