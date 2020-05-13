version 1.0

task CatErates {
  input {
    String lL
    String oO
  }
  command <<<
    cat-erates \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}