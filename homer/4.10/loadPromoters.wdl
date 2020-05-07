version 1.0

task LoadPromoters.pl {
  input {
    String asAs
    String aeAe
    Int sizeSize
    Boolean distDist
    Boolean offsetOffset
  }
  command <<<
    loadPromoters.pl \
      ~{if defined(asAs) then ("-as " +  '"' + asAs + '"') else ""} \
      ~{if defined(aeAe) then ("-ae " +  '"' + aeAe + '"') else ""} \
      ~{if defined(sizeSize) then ("-size " +  '"' + sizeSize + '"') else ""} \
      ~{true="-dist" false="" distDist} \
      ~{true="-offset" false="" offsetOffset}
  >>>
}