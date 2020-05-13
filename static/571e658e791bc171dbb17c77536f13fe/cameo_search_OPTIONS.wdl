version 1.0

task CameoSearchOPTIONS {
  input {
    String? productProduct
  }
  command <<<
    cameo search OPTIONS \
      ~{productProduct}
  >>>
}