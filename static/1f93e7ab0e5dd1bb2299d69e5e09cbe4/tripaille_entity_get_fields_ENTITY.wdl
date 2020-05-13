version 1.0

task TripailleEntityGetFieldsENTITY {
  input {
    String? optionsOptions
    String? entityEntity
  }
  command <<<
    tripaille entity get_fields ENTITY \
      ~{optionsOptions} \
      ~{entityEntity}
  >>>
}