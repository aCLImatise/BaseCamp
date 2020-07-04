version 1.0

task Jaspar2meme {
  input {
    String jaspar_directory_vertical_line_pfm_bundle
  }
  command <<<
    jaspar2meme \
      ~{jaspar_directory_vertical_line_pfm_bundle}
  >>>
  parameter_meta {
    jaspar_directory_vertical_line_pfm_bundle: ""
  }
}