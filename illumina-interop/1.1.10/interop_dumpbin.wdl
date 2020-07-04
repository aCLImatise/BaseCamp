version 1.0

task InteropDumpbin {
  input {
    Boolean? subset
    Boolean? latest_version
    String? option_one
    String? option_two
    String run_folder
  }
  command <<<
    interop_dumpbin \
      ~{run_folder} \
      ~{true="--subset" false="" subset} \
      ~{true="--latest_version" false="" latest_version} \
      ~{if defined(option_one) then ("--option1 " +  '"' + option_one + '"') else ""} \
      ~{if defined(option_two) then ("--option2 " +  '"' + option_two + '"') else ""}
  >>>
  parameter_meta {
    subset: "[0]: Display only a subset of records from each file"
    latest_version: "[0]: Display file as latest version of the format"
    option_one: ""
    option_two: ""
    run_folder: ""
  }
}