version 1.0

task BedparseCds {
  input {
    Boolean? ignore_cds_only
  }
  command <<<
    bedparse cds \
      ~{if (ignore_cds_only) then "--ignoreCDSonly" else ""}
  >>>
  parameter_meta {
    ignore_cds_only: "Ignore transcripts that only consist of CDS."
  }
  output {
    File out_stdout = stdout()
  }
}