version 1.0

task Date {
  input {
    String dateDate
    String fileFile
    Boolean iI
    Boolean rfcRfc2822
    String rfcRfc3339
    File referenceReference
    String setSet
    Boolean universalUniversal
  }
  command <<<
    date \
      ~{if defined(dateDate) then ("--date " +  '"' + dateDate + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{true="--rfc-2822" false="" rfcRfc2822} \
      ~{if defined(rfcRfc3339) then ("--rfc-3339 " +  '"' + rfcRfc3339 + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(setSet) then ("--set " +  '"' + setSet + '"') else ""} \
      ~{true="--universal" false="" universalUniversal}
  >>>
}