version 1.0

task Biosed {
  input {
    Boolean targetTargetRegion
  }
  command <<<
    biosed \
      ~{true="-targetregion" false="" targetTargetRegion}
  >>>
}