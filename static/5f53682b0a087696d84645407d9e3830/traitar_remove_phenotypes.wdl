version 1.0

task TraitarRemovePhenotypes {
  input {
    Boolean? keep
    String trait_ar
    String remove
    String archive_f
    String phenotypes
    String out_f
  }
  command <<<
    traitar remove phenotypes \
      ~{trait_ar} \
      ~{remove} \
      ~{archive_f} \
      ~{phenotypes} \
      ~{out_f} \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    keep: ""
    trait_ar: ""
    remove: ""
    archive_f: ""
    phenotypes: ""
    out_f: ""
  }
}