version 1.0

task PlanemoBrewInit {
  input {
    String? optionsOptions
  }
  command <<<
    planemo brew_init \
      ~{optionsOptions}
  >>>
}