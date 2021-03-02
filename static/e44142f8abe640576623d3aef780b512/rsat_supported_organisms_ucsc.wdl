version 1.0

task RsatSupportedorganismsucsc {
  input {
    String suu_ported_organism_uscs
    String examples
  }
  command <<<
    rsat supported_organisms_ucsc \
      ~{suu_ported_organism_uscs} \
      ~{examples}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    suu_ported_organism_uscs: "[1mAUTHORS[0m"
    examples: "Retrieve mammal genome disponible on UCSC.\\nsupported-organims-uscs.pl -taxon mammal"
  }
  output {
    File out_stdout = stdout()
  }
}