version 1.0

task Cpat.py {
  input {
    String geneGene
    String outfileOutfile
    String hexHex
    String logLogItModel
    String refRef
    String startStart
    String stopStop
  }
  command <<<
    cpat.py \
      ~{if defined(geneGene) then ("--gene " +  '"' + geneGene + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(hexHex) then ("--hex " +  '"' + hexHex + '"') else ""} \
      ~{if defined(logLogItModel) then ("--logitModel " +  '"' + logLogItModel + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""}
  >>>
}