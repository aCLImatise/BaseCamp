version 1.0

task TradisComparison.R {
  input {
    Boolean fF
    String tT
    String oO
    String pP
    String controlsControls
    String conditionsConditions
    String? cutCutOff
  }
  command <<<
    tradis_comparison.R \
      ~{cutCutOff} \
      ~{true="-f" false="" fF} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(controlsControls) then ("--controls " +  '"' + controlsControls + '"') else ""} \
      ~{if defined(conditionsConditions) then ("--conditions " +  '"' + conditionsConditions + '"') else ""}
  >>>
}