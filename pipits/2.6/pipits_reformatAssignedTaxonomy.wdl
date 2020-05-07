version 1.0

task PipitsReformatAssignedTaxonomy {
  input {
    String inIn
    String outOut
    String cC
  }
  command <<<
    pipits_reformatAssignedTaxonomy \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""}
  >>>
}