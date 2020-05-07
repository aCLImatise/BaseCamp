version 1.0

task EDcalculator {
  input {
    String? edEdCalculator
    String? ctCtStructureFile
  }
  command <<<
    EDcalculator \
      ~{edEdCalculator} \
      ~{ctCtStructureFile}
  >>>
}