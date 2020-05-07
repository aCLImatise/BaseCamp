version 1.0

task AnalyzeStarChimeric.py {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    analyze_star_chimeric.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}