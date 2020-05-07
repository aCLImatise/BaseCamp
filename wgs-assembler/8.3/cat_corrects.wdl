version 1.0

task CatCorrects {
  input {
    String lL
    String oO
  }
  command <<<
    cat-corrects \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}