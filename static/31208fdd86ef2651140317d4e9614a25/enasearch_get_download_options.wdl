version 1.0

task EnasearchGetDownloadOptions {
  input {
    String? optionsOptions
  }
  command <<<
    enasearch get_download_options \
      ~{optionsOptions}
  >>>
}