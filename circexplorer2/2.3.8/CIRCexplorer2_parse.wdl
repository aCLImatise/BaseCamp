version 1.0

task CIRCexplorer2Parse {
  input {
    String tT
    String bedBed
    Boolean pePe
    Boolean fF
    String? fusionFusion
  }
  command <<<
    CIRCexplorer2 parse \
      ~{fusionFusion} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{true="--pe" false="" pePe} \
      ~{true="-f" false="" fF}
  >>>
}