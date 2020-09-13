version 1.0

task InteropDumpbin {
  input {
    Boolean? subset
    Boolean? latest_version
    Int? option_two
    Int? option_one
    String run_folder
  }
  command <<<
    interop_dumpbin \
      ~{run_folder} \
      ~{if (subset) then "--subset" else ""} \
      ~{if (latest_version) then "--latest_version" else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""}
  >>>
  parameter_meta {
    subset: "[0]: Display only a subset of records from each file"
    latest_version: "[0]: Display file as latest version of the format"
    option_two: ""
    option_one: ""
    run_folder: ""
  }
  output {
    File out_stdout = stdout()
  }
}