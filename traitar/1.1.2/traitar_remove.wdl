version 1.0

task TraitarRemove {
  input {
    Boolean? keep
  }
  command <<<
    traitar remove \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    keep: "instead of remove the given phenotypes, keep them and forget the rest"
  }
}