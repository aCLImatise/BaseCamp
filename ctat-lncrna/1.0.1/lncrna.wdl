version 1.0

task Lncrna {
  input {
    Boolean? web
    String? last_z
    String? bed_tools
    String? lift_over
    String? bed_file
    String? assembly
    String l_ncrna_discovery_do_tpy
  }
  command <<<
    lncrna \
      ~{l_ncrna_discovery_do_tpy} \
      ~{true="--web" false="" web} \
      ~{if defined(last_z) then ("--lastz " +  '"' + last_z + '"') else ""} \
      ~{if defined(bed_tools) then ("--bedtools " +  '"' + bed_tools + '"') else ""} \
      ~{if defined(lift_over) then ("--liftover " +  '"' + lift_over + '"') else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""}
  >>>
  parameter_meta {
    web: "flag if you want website written visualizing transcripts that were filtered out (default: False)"
    last_z: "lastz software (default: None)"
    bed_tools: "bedtools software (default: None)"
    lift_over: "liftover software (default: None)"
    bed_file: ""
    assembly: ""
    l_ncrna_discovery_do_tpy: ""
  }
}