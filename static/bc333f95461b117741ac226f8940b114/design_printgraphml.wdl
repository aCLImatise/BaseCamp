version 1.0

task DesignPrintgraphml.py {
  input {
    String graphGraphMl
    Boolean inputInput
    String layoutLayout
    File fileFile
    String outputOutput
  }
  command <<<
    design-printgraphml.py \
      ~{if defined(graphGraphMl) then ("--graphml " +  '"' + graphGraphMl + '"') else ""} \
      ~{true="--input" false="" inputInput} \
      ~{if defined(layoutLayout) then ("--layout " +  '"' + layoutLayout + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}