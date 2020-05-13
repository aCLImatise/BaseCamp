version 1.0

task TripailleEntityAddEntityENTITY {
  input {
    String? optionsOptions
    String? entityEntity
  }
  command <<<
    tripaille entity add_entity ENTITY \
      ~{optionsOptions} \
      ~{entityEntity}
  >>>
}