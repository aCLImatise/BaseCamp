version 1.0

task DumpContigsAsReads {
  input {
    Boolean? bank
    File? dump_just_eids
    File? dump_just_iids
  }
  command <<<
    dumpContigsAsReads \
      ~{if (bank) then "-bank" else ""} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    dump_just_eids: "Dump just the contig eids listed in file"
    dump_just_iids: "Dump just the contig iids listed in file"
  }
  output {
    File out_stdout = stdout()
  }
}