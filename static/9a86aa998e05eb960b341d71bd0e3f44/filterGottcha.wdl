version 1.0

task FilterGottcha.pl {
  input {
    String? strain_lookup
    String? species_lookup
    String? genus_lookup
    String? family_lookup
    String? order_lookup
    String? class_lookup
    String? phylum_lookup
    String? tax_lookup
    String? tax_level
    String? dir
    String? prefix
    Boolean? method
    Boolean? field
    Boolean? min_len
    Boolean? min_cov
    Boolean? min_hits
    Boolean? min_ml_hl
    Boolean? c_cov
  }
  command <<<
    filterGottcha.pl \
      ~{if defined(strain_lookup) then ("--strainLookup " +  '"' + strain_lookup + '"') else ""} \
      ~{if defined(species_lookup) then ("--speciesLookup " +  '"' + species_lookup + '"') else ""} \
      ~{if defined(genus_lookup) then ("--genusLookup " +  '"' + genus_lookup + '"') else ""} \
      ~{if defined(family_lookup) then ("--familyLookup " +  '"' + family_lookup + '"') else ""} \
      ~{if defined(order_lookup) then ("--orderLookup " +  '"' + order_lookup + '"') else ""} \
      ~{if defined(class_lookup) then ("--classLookup " +  '"' + class_lookup + '"') else ""} \
      ~{if defined(phylum_lookup) then ("--phylumLookup " +  '"' + phylum_lookup + '"') else ""} \
      ~{if defined(tax_lookup) then ("--taxLookup " +  '"' + tax_lookup + '"') else ""} \
      ~{if defined(tax_level) then ("--taxLevel " +  '"' + tax_level + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--method" false="" method} \
      ~{true="--field" false="" field} \
      ~{true="--minLen" false="" min_len} \
      ~{true="--minCov" false="" min_cov} \
      ~{true="--minHits" false="" min_hits} \
      ~{true="--minMLHL" false="" min_ml_hl} \
      ~{true="--cCov" false="" c_cov}
  >>>
  parameter_meta {
    strain_lookup: "STRAIN lookup filename  (E.g. /lscratch/db/custom/variantStrainLookup.dmp)"
    species_lookup: "SPECIES lookup filename (E.g. /lscratch/db/custom/variantSpeciesLookup.dmp)"
    genus_lookup: "GENUS lookup filename   (E.g. /lscratch/db/custom/genusLookupBySpecies.dmp)"
    family_lookup: "FAMILY lookup filename  (E.g. /lscratch/db/custom/familyLookupByGenus.dmp)"
    order_lookup: "ORDER lookup filename   (E.g. /lscratch/db/custom/orderLookupByFamily.dmp)"
    class_lookup: "CLASS lookup filename   (E.g. /lscratch/db/custom/classLookupByOrder.dmp)"
    phylum_lookup: "PHYLUM lookup filename  (E.g. /lscratch/db/custom/phylumLookupByClass.dmp)"
    tax_lookup: "TAX lookup filename     (E.g. /lscratch/db/custom/taxLookupBySpecies.dmp)"
    tax_level: "Tax level that the GOTTCHA run was performed at. One of either: STRAIN, SPECIES, GENUS, FAMILY, ORDER, CLASS, or PHYLUM"
    dir: "Directory name containing the GOTTCHA *.tsv tables"
    prefix: "Prefix of the GOTTCHA *.tsv tables. If FILENAME=\"even-100genus1-100species-150Mpe-haserror_fixL30Q20.strain.tsv\" Then PREFIX=\"even-100genus1-100species-150Mpe-haserror_fixL30Q20\""
    method: "=<1,2,3>            Method by which to calculate relative abundance. Multiple methods are comma-separated (no spaces). 1: Linear Depth-of-Coverage 2:  3: "
    field: "Field separator [default: <tab>]"
    min_len: "Minimum unique length to be considered valid in abundance calculation [100]"
    min_cov: "Minimum linear coverage to be considered valid in abundance calculation [0.005]"
    min_hits: "Minimum no. of hits to be considered valid in abundance calculation [10]"
    min_ml_hl: "Minimum Mean-Linear-Hit-Length to be considered valid in abundance calculation [1]"
    c_cov: "Critical coverage below which --minMLHL will cause an organism to fail []"
  }
}