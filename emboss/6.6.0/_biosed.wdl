version 1.0

task _biosed {
  input {
    Boolean targetTargetRegion
  }
  command <<<
    _biosed \
      ~{true="-targetregion" false="" targetTargetRegion}
  >>>
}