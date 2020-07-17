version 1.0

task OmeroConfigSet {
  input {
    Boolean? report
    File? file
    String key
    String value
  }
  command <<<
    omero config set \
      ~{key} \
      ~{value} \
      ~{true="--report" false="" report} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""}
  >>>
  parameter_meta {
    report: "Report if changes are made"
    file: "Load value from file"
    key: "Name of the key in the current profile"
    value: "Value to be set. If it is missing, the key will be removed"
  }
}