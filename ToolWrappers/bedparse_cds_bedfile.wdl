version 1.0

task BedparseCdsBedfile {
  input {
    Boolean? ignore_cds_only
  }
  command <<<
    bedparse cds bedfile \
      ~{if (ignore_cds_only) then "--ignoreCDSonly" else ""}
  >>>
  parameter_meta {
    ignore_cds_only: ""
  }
  output {
    File out_stdout = stdout()
  }
}