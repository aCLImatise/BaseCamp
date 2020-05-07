version 1.0

task ParaTestJob {
  input {
    Boolean crashCrash
    Boolean errErr
    File outputOutput
    String heavyHeavy
    File inputInput
    String sleepSleep
    String? countCount
  }
  command <<<
    paraTestJob \
      ~{countCount} \
      ~{true="-crash" false="" crashCrash} \
      ~{true="-err" false="" errErr} \
      ~{if defined(outputOutput) then ("-output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(heavyHeavy) then ("-heavy " +  '"' + heavyHeavy + '"') else ""} \
      ~{if defined(inputInput) then ("-input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(sleepSleep) then ("-sleep " +  '"' + sleepSleep + '"') else ""}
  >>>
}