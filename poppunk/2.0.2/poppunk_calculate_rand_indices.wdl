version 1.0

task PoppunkCalculateRandIndices.py {
  input {
    String inputInput
    String outputOutput
    String subsetSubset
  }
  command <<<
    poppunk_calculate_rand_indices.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""}
  >>>
}