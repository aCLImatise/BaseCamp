version 1.0

task BedparseCdsBedfile {
  input {
    Boolean? ignore_cds_only
  }
  command <<<
    bedparse cds bedfile \
      ~{true="--ignoreCDSonly" false="" ignore_cds_only}
  >>>
  parameter_meta {
    ignore_cds_only: ""
  }
}