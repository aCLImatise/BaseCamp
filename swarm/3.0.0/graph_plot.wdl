version 1.0

task GraphPlot.py {
  input {
    File swarmsSwarms
    File internalInternalStructure
    Int otuOtu
    Int dropDrop
  }
  command <<<
    graph_plot.py \
      ~{if defined(swarmsSwarms) then ("--swarms " +  '"' + swarmsSwarms + '"') else ""} \
      ~{if defined(internalInternalStructure) then ("--internal_structure " +  '"' + internalInternalStructure + '"') else ""} \
      ~{if defined(otuOtu) then ("--OTU " +  '"' + otuOtu + '"') else ""} \
      ~{if defined(dropDrop) then ("--drop " +  '"' + dropDrop + '"') else ""}
  >>>
}