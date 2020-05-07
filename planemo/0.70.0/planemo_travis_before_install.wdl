version 1.0

task PlanemoTravisBeforeInstall {
  input {
    String? optionsOptions
  }
  command <<<
    planemo travis_before_install \
      ~{optionsOptions}
  >>>
}