version 1.0

task NormalizeByCopyNumber.py {
  input {
    String inputInputOtuFp
    String outputOutputOtuFp
  }
  command <<<
    normalize_by_copy_number.py \
      ~{if defined(inputInputOtuFp) then ("--input_otu_fp " +  '"' + inputInputOtuFp + '"') else ""} \
      ~{if defined(outputOutputOtuFp) then ("--output_otu_fp " +  '"' + outputOutputOtuFp + '"') else ""}
  >>>
}