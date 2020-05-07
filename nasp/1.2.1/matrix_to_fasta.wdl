version 1.0

task MatrixToFasta.py {
  input {
    String inputInputMatrix
    String outputOutputPrefix
    String filterFilterFrequency
  }
  command <<<
    matrix_to_fasta.py \
      ~{if defined(inputInputMatrix) then ("--input_matrix " +  '"' + inputInputMatrix + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(filterFilterFrequency) then ("--filter_frequency " +  '"' + filterFilterFrequency + '"') else ""}
  >>>
}