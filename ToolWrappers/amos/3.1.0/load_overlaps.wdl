version 1.0

task Loadoverlaps {
  input {
    File? set_path_populate
    Float? set_minimum_default
    Int? set_maximum_populate
    String delta_file
  }
  command <<<
    load_overlaps \
      ~{delta_file} \
      ~{if defined(set_path_populate) then ("-b " +  '"' + set_path_populate + '"') else ""} \
      ~{if defined(set_minimum_default) then ("-i " +  '"' + set_minimum_default + '"') else ""} \
      ~{if defined(set_maximum_populate) then ("-t " +  '"' + set_maximum_populate + '"') else ""}
  >>>
  parameter_meta {
    set_path_populate: "Set path of the AMOS bank to populate"
    set_minimum_default: "Set the minimum alignment identity, default 90"
    set_maximum_populate: "Set maximum ignorable trim length, default 20\\nPopulate overlap store based on the all vs. all alignment"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}