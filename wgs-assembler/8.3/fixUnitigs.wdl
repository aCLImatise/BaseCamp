version 1.0

task FixUnitigs {
  input {
    String oO
    String? unitUnitIgsCgb
    String? fixedFixedUnitIgsCgb
  }
  command <<<
    fixUnitigs \
      ~{unitUnitIgsCgb} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{fixedFixedUnitIgsCgb}
  >>>
}