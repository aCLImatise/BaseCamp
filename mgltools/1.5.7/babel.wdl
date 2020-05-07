version 1.0

task Babel {
  input {
    Boolean iI
    Boolean oO
    String? inputInputType
    String? nameName
    String? outputOutputType
    String? nameName
  }
  command <<<
    babel \
      ~{inputInputType} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{nameName} \
      ~{outputOutputType} \
      ~{nameName}
  >>>
}