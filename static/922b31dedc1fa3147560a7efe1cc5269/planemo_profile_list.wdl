version 1.0

task PlanemoProfileList {
  input {
    String? optionsOptions
  }
  command <<<
    planemo profile_list \
      ~{optionsOptions}
  >>>
}