version 1.0

task SketchySurveyPopmap {
  input {
    File sshSsh
    File treeTree
    File graphGraph
    File indexIndex
    String columnColumn
    File outputOutput
  }
  command <<<
    sketchy survey popmap \
      ~{if defined(sshSsh) then ("--ssh " +  '"' + sshSsh + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}