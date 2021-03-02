version 1.0

task FilterOverlap {
  input {
    Boolean? ovl
    Boolean? obt
    String? minlength
    String? max_error
    Boolean? no_containment
    Boolean? no_dovetail
    String? gkp
  }
  command <<<
    filterOverlap \
      ~{if (ovl) then "-ovl" else ""} \
      ~{if (obt) then "-obt" else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(max_error) then ("-maxerror " +  '"' + max_error + '"') else ""} \
      ~{if (no_containment) then "-nocontainment" else ""} \
      ~{if (no_dovetail) then "-nodovetail" else ""} \
      ~{if defined(gkp) then ("-gkp " +  '"' + gkp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ovl: "-- overlaps are OVL"
    obt: "-- overlaps are OBT"
    minlength: "-- throw out overlaps shorter than l"
    max_error: "-- throw out overlaps with more than fraction e error"
    no_containment: "-- throw out containment overlaps"
    no_dovetail: "-- throw out dovetail overlaps"
    gkp: "Needed for -ovl or -nocontainment or -nodovetail"
  }
  output {
    File out_stdout = stdout()
  }
}