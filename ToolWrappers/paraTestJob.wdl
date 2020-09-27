version 1.0

task ParaTestJob {
  input {
    Boolean? crash
    Boolean? err
    File? make_output_well
    String? heavy
    File? make_it_read
    String? sleep
  }
  command <<<
    paraTestJob \
      ~{if (crash) then "-crash" else ""} \
      ~{if (err) then "-err" else ""} \
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
  }
  output {
    File out_stdout = stdout()
    File out_make_output_well = "${in_make_output_well}"
  }
}