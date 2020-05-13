version 1.0

task SequanaGtfFixer {
  input {
    String inputInput
    String outputOutput
    String? gtfGtfFixer
    String? inputInput
    String? nN
    String? outputOutput
  }
  command <<<
    sequana_gtf_fixer \
      ~{gtfGtfFixer} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{inputInput} \
      ~{nN} \
      ~{outputOutput}
  >>>
}