version 1.0

task SamToGff3.py {
  input {
    String inputInputFastA
    String sourceSource
  }
  command <<<
    sam_to_gff3.py \
      ~{if defined(inputInputFastA) then ("--input_fasta " +  '"' + inputInputFastA + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}