version 1.0

task Dumpmates {
  input {
    Boolean? report_objects_eid
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    String dump_mates
  }
  command <<<
    dumpmates \
      ~{dump_mates} \
      ~{true="-e" false="" report_objects_eid} \
      ~{true="-s" false="" disregard_bank_locks} \
      ~{true="-v" false="" display_compatible_version}
  >>>
  parameter_meta {
    report_objects_eid: "Report objects by EID instead of IID"
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    dump_mates: "[options]  -b <bank path>"
  }
}