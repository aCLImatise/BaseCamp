version 1.0

task GdalConfig {
  input {
    String? optionsOptions
  }
  command <<<
    gdal-config \
      ~{optionsOptions}
  >>>
}