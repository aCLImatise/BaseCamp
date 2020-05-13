version 1.0

task Gdc2 {
  input {
    String additionallyAdditionally
    String setSet
    String setSet
    String setSet
  }
  command <<<
    gdc2 \
      ~{if defined(additionallyAdditionally) then ("- additionally " +  '"' + additionallyAdditionally + '"') else ""} \
      ~{if defined(setSet) then ("- set " +  '"' + setSet + '"') else ""} \
      ~{if defined(setSet) then ("- set " +  '"' + setSet + '"') else ""} \
      ~{if defined(setSet) then ("- set " +  '"' + setSet + '"') else ""}
  >>>
}