version 1.0

task Droppe.py {
  input {
    String inputInput
    String outputOutput
    String keepKeep
    String infoInfo
  }
  command <<<
    droppe.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(keepKeep) then ("--keep " +  '"' + keepKeep + '"') else ""} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""}
  >>>
}