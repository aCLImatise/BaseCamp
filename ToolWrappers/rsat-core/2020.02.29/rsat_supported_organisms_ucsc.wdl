version 1.0

task RsatSupportedorganismsucsc {
  input {
    String suu_ported_organism_uscs
    String jacques_dot_van_helden_backslash_at_univ_am_udot_fr
    String examples
  }
  command <<<
    rsat supported_organisms_ucsc \
      ~{suu_ported_organism_uscs} \
      ~{jacques_dot_van_helden_backslash_at_univ_am_udot_fr} \
      ~{examples}
  >>>
  parameter_meta {
    suu_ported_organism_uscs: "[1mAUTHORS[0m"
    jacques_dot_van_helden_backslash_at_univ_am_udot_fr: "[1mVERSION[0m"
    examples: "Retrieve mammal genome disponible on UCSC.\\nsupported-organims-uscs.pl -taxon mammal"
  }
  output {
    File out_stdout = stdout()
  }
}