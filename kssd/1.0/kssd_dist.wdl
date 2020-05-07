version 1.0

task KssdDist {
  input {
    String rR
    String? optionOption
    String? queryQuery
  }
  command <<<
    kssd dist \
      ~{optionOption} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{queryQuery}
  >>>
}