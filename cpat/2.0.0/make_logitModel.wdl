version 1.0

task MakeLogitModel.py {
  input {
    String cCGene
    String nNGene
    String outfileOutfile
    String hexHex
    String refRef
    String startStart
    String stopStop
  }
  command <<<
    make_logitModel.py \
      ~{if defined(cCGene) then ("--cgene " +  '"' + cCGene + '"') else ""} \
      ~{if defined(nNGene) then ("--ngene " +  '"' + nNGene + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(hexHex) then ("--hex " +  '"' + hexHex + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""}
  >>>
}