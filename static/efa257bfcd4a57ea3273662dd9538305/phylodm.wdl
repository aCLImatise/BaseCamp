version 1.0

task Phylodm {
  input {
    String? newickNewick
    String? methodMethod
    String? outputOutput
  }
  command <<<
    phylodm \
      ~{newickNewick} \
      ~{methodMethod} \
      ~{outputOutput}
  >>>
}