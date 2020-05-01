version 1.0

task AnalyzeExonExonMappings.py {
  input {
    String inputInput
    String inputInputHugo
    String outputOutput
    String outputOutputHenrik
  }
  command <<<
    analyze_exon-exon_mappings.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputHugo) then ("--input_hugo " +  '"' + inputInputHugo + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputHenrik) then ("--output_henrik " +  '"' + outputOutputHenrik + '"') else ""}
  >>>
}