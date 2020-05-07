version 1.0

task VennMpl.py {
  input {
    String aA
    String bB
    String cC
    String labelsLabels
    String colorsColors
    String oO
    Boolean testTest
  }
  command <<<
    venn_mpl.py \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(colorsColors) then ("--colors " +  '"' + colorsColors + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--test" false="" testTest}
  >>>
}