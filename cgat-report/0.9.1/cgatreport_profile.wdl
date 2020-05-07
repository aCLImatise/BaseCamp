version 1.0

task CgatreportProfile {
  input {
    String sectionSection
    String timeTime
    String filterFilter
  }
  command <<<
    cgatreport-profile \
      ~{if defined(sectionSection) then ("--section " +  '"' + sectionSection + '"') else ""} \
      ~{if defined(timeTime) then ("--time " +  '"' + timeTime + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}