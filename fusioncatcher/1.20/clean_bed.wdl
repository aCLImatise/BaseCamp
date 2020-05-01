version 1.0

task CleanBed.py {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    clean_bed.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}