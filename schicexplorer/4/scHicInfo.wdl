version 1.0

task ScHicInfo {
  input {
    String matrixMatrix
    String? schSchIC
    String? matrixMatrix
  }
  command <<<
    scHicInfo \
      ~{schSchIC} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{matrixMatrix}
  >>>
}