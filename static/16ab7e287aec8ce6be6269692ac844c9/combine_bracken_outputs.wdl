version 1.0

task CombineBrackenOutputs.py {
  input {
    Array[File]+ filesFiles
    String namesNames
    String outputOutput
  }
  command <<<
    combine_bracken_outputs.py \
      ~{if defined(filesFiles) then ("--files " +  '"' + filesFiles + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}