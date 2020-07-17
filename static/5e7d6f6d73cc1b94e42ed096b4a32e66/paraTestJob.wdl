version 1.0

task ParaTestJob {
  input {
    Boolean? crash
    Boolean? err
    File? make_output_well
    String? heavy
    File? make_it_read
    String? sleep
    String count
  }
  command <<<
    paraTestJob \
      ~{count} \
      ~{true="-crash" false="" crash} \
      ~{true="-err" false="" err} \
      ~{if defined(make_output_well) then ("-output " +  '"' + make_output_well + '"') else ""} \
      ~{if defined(heavy) then ("-heavy " +  '"' + heavy + '"') else ""} \
      ~{if defined(make_it_read) then ("-input " +  '"' + make_it_read + '"') else ""} \
      ~{if defined(sleep) then ("-sleep " +  '"' + sleep + '"') else ""}
  >>>
  parameter_meta {
    crash: "Try to write to NULL when done."
    err: "Return -1 error code when done."
    make_output_well: "Make some output in file as well."
    heavy: "Make output heavy: n extra lumberjack lines."
    make_it_read: "Make it read in a file too."
    sleep: "Sleep for N seconds."
    count: ""
  }
}