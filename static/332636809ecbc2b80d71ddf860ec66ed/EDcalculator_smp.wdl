version 1.0

task EDcalculatorSmp {
  input {
    String ed_calculator
    String ct_structure_file
  }
  command <<<
    EDcalculator-smp \
      ~{ed_calculator} \
      ~{ct_structure_file}
  >>>
  parameter_meta {
    ed_calculator: ""
    ct_structure_file: ""
  }
}