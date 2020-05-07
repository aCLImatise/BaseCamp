version 1.0

task PoretoolsOccupancy {
  input {
    Boolean quietQuiet
    String saveSaveAs
    String plotPlotType
    File? filesFiles
  }
  command <<<
    poretools occupancy \
      ~{filesFiles} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(saveSaveAs) then ("--saveas " +  '"' + saveSaveAs + '"') else ""} \
      ~{if defined(plotPlotType) then ("--plot-type " +  '"' + plotPlotType + '"') else ""}
  >>>
}