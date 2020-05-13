version 1.0

task UnweightFasta.py {
  input {
    String inputInputFastA
    String outputOutputFile
    String labelLabel
  }
  command <<<
    unweight_fasta.py \
      ~{if defined(inputInputFastA) then ("--input_fasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output_file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""}
  >>>
}