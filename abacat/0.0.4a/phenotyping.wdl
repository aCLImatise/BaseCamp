version 1.0

task Phenotyping.py {
  input {
    String inputInput
    String evalueEvalue
    String jsonJson
  }
  command <<<
    phenotyping.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(jsonJson) then ("--json " +  '"' + jsonJson + '"') else ""}
  >>>
}