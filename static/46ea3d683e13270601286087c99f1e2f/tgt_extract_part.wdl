version 1.0

task TgtExtractPart.py {
  input {
    String sS
    String eE
    String oO
    String? tgTgPath
  }
  command <<<
    tgt-extract-part.py \
      ~{tgTgPath} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}