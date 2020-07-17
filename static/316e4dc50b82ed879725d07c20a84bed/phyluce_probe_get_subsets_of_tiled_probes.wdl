version 1.0

task PhyluceProbeGetSubsetsOfTiledProbes {
  input {
    String? probes
    Array[String] tax_a
    String? file_store_output
    String? regex
  }
  command <<<
    phyluce_probe_get_subsets_of_tiled_probes \
      ~{if defined(probes) then ("--probes " +  '"' + probes + '"') else ""} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{if defined(file_store_output) then ("--output " +  '"' + file_store_output + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""}
  >>>
  parameter_meta {
    probes: "The probe file to filter."
    tax_a: "The taxa for which to filter probes."
    file_store_output: "The file in which to store the output."
    regex: "A regular expression to apply to the probe names for replacement [default='^(uce-\d+)(?:_p\d+.*)']."
  }
}