version 1.0

task PipitsFunguild.py {
  input {
    String iI
    String oO
    String? convertsConverts
    String? otuOtu
    String? tablesTables
    Int? intoInto
    String? funFunGuild
    String? formattedFormatted
    String? otuOtu
    String? tableTable
  }
  command <<<
    pipits_funguild.py \
      ~{convertsConverts} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{otuOtu} \
      ~{tablesTables} \
      ~{intoInto} \
      ~{funFunGuild} \
      ~{formattedFormatted} \
      ~{otuOtu} \
      ~{tableTable}
  >>>
}