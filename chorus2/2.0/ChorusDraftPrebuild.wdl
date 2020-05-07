version 1.0

task ChorusDraftPrebuild {
  input {
    String iI
    String oO
  }
  command <<<
    ChorusDraftPrebuild \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}