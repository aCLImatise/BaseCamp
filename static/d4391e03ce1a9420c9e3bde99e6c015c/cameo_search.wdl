version 1.0

task CameoSearch {
  input {
    String product
  }
  command <<<
    cameo search \
      ~{product}
  >>>
  parameter_meta {
    product: ""
  }
}