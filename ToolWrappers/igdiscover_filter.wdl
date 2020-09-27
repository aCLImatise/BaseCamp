version 1.0

task IgdiscoverFilter {
  input {
    Int? v_coverage
    Float? v_evalue
    Int? j_coverage
    File? json
  }
  command <<<
    igdiscover filter \
      ~{if defined(v_coverage) then ("--v-coverage " +  '"' + v_coverage + '"') else ""} \
      ~{if defined(v_evalue) then ("--v-evalue " +  '"' + v_evalue + '"') else ""} \
      ~{if defined(j_coverage) then ("--j-coverage " +  '"' + j_coverage + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  parameter_meta {
    v_coverage: "Require that the sequence covers at least PERCENT of\\nthe V gene. Default: 90"
    v_evalue: "Require that the E-value for the V gene match is at\\nmost EVALUE. Default: 0.001"
    j_coverage: "Require that the sequence covers at least PERCENT of\\nthe J gene. Default: 60"
    json: "Write statistics to FILE"
  }
  output {
    File out_stdout = stdout()
  }
}