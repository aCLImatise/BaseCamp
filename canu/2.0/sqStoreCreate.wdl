version 1.0

task SqStoreCreate {
  input {
    String technologyTechnologyStatus
  }
  command <<<
    sqStoreCreate \
      ~{if defined(technologyTechnologyStatus) then ("-technology-status " +  '"' + technologyTechnologyStatus + '"') else ""}
  >>>
}