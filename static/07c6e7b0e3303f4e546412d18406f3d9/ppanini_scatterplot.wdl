version 1.0

task PpaniniScatterplot {
  input {
    Boolean masterMasterPlot
    File pathPath
    String outfileOutfile
    Int sizeSize
  }
  command <<<
    ppanini_scatterplot \
      ~{true="--master-plot" false="" masterMasterPlot} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""}
  >>>
}