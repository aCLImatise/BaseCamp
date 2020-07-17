version 1.0

task BedparseCds {
  input {
    Boolean? ignore_cds_only
  }
  command <<<
    bedparse cds \
      ~{true="--ignoreCDSonly" false="" ignore_cds_only}
  >>>
  parameter_meta {
    ignore_cds_only: "Ignore transcripts that only consist of CDS."
  }
}