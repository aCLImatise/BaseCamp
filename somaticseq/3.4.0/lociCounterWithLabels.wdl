version 1.0

task LociCounterWithLabels.py {
  input {
    String faiFaiFile
    Boolean bedsBeds
    String bedBedOut
    Boolean labelsLabels
  }
  command <<<
    lociCounterWithLabels.py \
      ~{if defined(faiFaiFile) then ("--fai-file " +  '"' + faiFaiFile + '"') else ""} \
      ~{true="-beds" false="" bedsBeds} \
      ~{if defined(bedBedOut) then ("--bed-out " +  '"' + bedBedOut + '"') else ""} \
      ~{true="-labels" false="" labelsLabels}
  >>>
}