version 1.0

task GetSpeciesTaxids.sh {
  input {
    String tT
    Boolean nN
  }
  command <<<
    get_species_taxids.sh \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-n" false="" nN}
  >>>
}