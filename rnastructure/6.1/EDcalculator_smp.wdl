version 1.0

task EDcalculatorSmp {
  input {
    String? edEdCalculator
    String? ctCtStructureFile
  }
  command <<<
    EDcalculator-smp \
      ~{edEdCalculator} \
      ~{ctCtStructureFile}
  >>>
}