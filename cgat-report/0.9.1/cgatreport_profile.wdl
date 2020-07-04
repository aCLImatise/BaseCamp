version 1.0

task CgatreportProfile {
  input {
    String? section
    String? time
    String? filter
    String python
  }
  command <<<
    cgatreport-profile \
      ~{python} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    section: "only examine certain sections [default=[]]"
    time: "time to show [default=seconds]"
    filter: "apply filter to output [default=all]"
    python: ""
  }
}