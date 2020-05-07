version 1.0

task PlanemoSyntax {
  input {
    String? optionsOptions
  }
  command <<<
    planemo syntax \
      ~{optionsOptions}
  >>>
}