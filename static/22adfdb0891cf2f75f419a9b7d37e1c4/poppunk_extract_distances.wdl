version 1.0

task PoppunkExtractDistances.py {
  input {
    String distancesDistances
    String outputOutput
    String? extractExtractDistances
  }
  command <<<
    poppunk_extract_distances.py \
      ~{extractExtractDistances} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}