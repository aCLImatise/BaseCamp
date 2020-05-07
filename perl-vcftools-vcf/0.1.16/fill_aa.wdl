version 1.0

task FillAa {
  input {
    String ancestralAncestralAllele
    String typeType
    String? optionsOptions
    String? inInVcf
    String? outOutVcf
  }
  command <<<
    fill-aa \
      ~{optionsOptions} \
      ~{if defined(ancestralAncestralAllele) then ("--ancestral-allele " +  '"' + ancestralAncestralAllele + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{inInVcf} \
      ~{outOutVcf}
  >>>
}