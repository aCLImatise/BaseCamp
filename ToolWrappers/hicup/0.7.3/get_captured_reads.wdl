version 1.0

task GetCapturedReads {
  input {
    Boolean? baits
    Boolean? header
    Boolean? interactions
  }
  command <<<
    get_captured_reads \
      ~{if (baits) then "--baits" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (interactions) then "--interactions" else ""}
  >>>
  parameter_meta {
    baits: "Baits format file"
    header: "Specify number of header lines in the baits file (i.e. skip these)"
    interactions: "Calculate interaction frequecies between baits"
  }
  output {
    File out_stdout = stdout()
  }
}