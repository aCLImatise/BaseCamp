version 1.0

task Makeroc2 {
  input {
    File? distfile
    Boolean? plotline
    String? option
    String run_name
  }
  command <<<
    makeroc2 \
      ~{run_name} \
      ~{if defined(distfile) then ("-distfile " +  '"' + distfile + '"') else ""} \
      ~{if (plotline) then "-plotline" else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    distfile: ".dist    Score file to read (required)."
    plotline: "<num>  Mark false pos/neg curves at given threshold."
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}