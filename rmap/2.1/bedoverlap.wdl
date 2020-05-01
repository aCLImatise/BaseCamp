version 1.0

task Bedoverlap {
  input {
    Boolean outputOutput
    Boolean aboutAbout
    String? optionsOptions
    String? bedBedRegions
    String? bedBedMapLocations
  }
  command <<<
    bedoverlap \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-about" false="" aboutAbout} \
      ~{bedBedRegions} \
      ~{bedBedMapLocations}
  >>>
}