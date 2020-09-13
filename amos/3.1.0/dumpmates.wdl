version 1.0

task Dumpmates {
  input {
    Boolean? report_objects_eid
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    String dump_mates
    String stdout
  }
  command <<<
    dumpmates \
      ~{dump_mates} \
      ~{stdout} \
      ~{if (report_objects_eid) then "-e" else ""} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""}
  >>>
  parameter_meta {
    report_objects_eid: "Report objects by EID instead of IID"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    dump_mates: "[options]  -b <bank path>"
    stdout: ".OPTIONS."
  }
  output {
    File out_stdout = stdout()
  }
}