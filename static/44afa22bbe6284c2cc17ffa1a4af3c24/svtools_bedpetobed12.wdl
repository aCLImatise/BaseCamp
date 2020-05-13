version 1.0

task SvtoolsBedpetobed12 {
  input {
    File bedBedPe
    String nameName
    Int maxMaxDist
  }
  command <<<
    svtools bedpetobed12 \
      ~{if defined(bedBedPe) then ("--bedpe " +  '"' + bedBedPe + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""}
  >>>
}