version 1.0

task TripailleEntityGetBundles {
  input {
    String? optionsOptions
  }
  command <<<
    tripaille entity get_bundles \
      ~{optionsOptions}
  >>>
}