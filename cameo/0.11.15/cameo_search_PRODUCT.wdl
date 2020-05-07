version 1.0

task CameoSearchPRODUCT {
  input {
    String? optionsOptions
    String? productProduct
  }
  command <<<
    cameo search PRODUCT \
      ~{optionsOptions} \
      ~{productProduct}
  >>>
}