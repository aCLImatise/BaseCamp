version 1.0

task Novobarcode {
  input {
    String? novoNovoBarcode
  }
  command <<<
    novobarcode \
      ~{novoNovoBarcode}
  >>>
}