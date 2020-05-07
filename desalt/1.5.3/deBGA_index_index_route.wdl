version 1.0

task DeBGAIndexIndexRoute {
  input {
    String? referenceReferenceFastA
    String? indexIndexRoute
  }
  command <<<
    deBGA index index_route \
      ~{referenceReferenceFastA} \
      ~{indexIndexRoute}
  >>>
}