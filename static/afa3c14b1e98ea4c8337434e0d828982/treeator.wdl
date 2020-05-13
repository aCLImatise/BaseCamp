version 1.0

task Treeator {
  input {
    String outputOutput
  }
  command <<<
    treeator \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}