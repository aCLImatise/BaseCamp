version 1.0

task ListSingletonMates {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    File bank_path
  }
  command <<<
    listSingletonMates \
      ~{bank_path} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}