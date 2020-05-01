version 1.0

task Mglbabel {
  input {
    Boolean iI
    Boolean oO
    String? babelBabel
    String? inputInputType
    String? nameName
    String? outputOutputType
    String? nameName
  }
  command <<<
    mglbabel \
      ~{babelBabel} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{inputInputType} \
      ~{nameName} \
      ~{outputOutputType} \
      ~{nameName}
  >>>
}