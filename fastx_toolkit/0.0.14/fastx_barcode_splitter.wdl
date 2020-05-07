version 1.0

task FastxBarcodeSplitter.pl {
  input {
    Boolean prefixPrefix
  }
  command <<<
    fastx_barcode_splitter.pl \
      ~{true="--prefix" false="" prefixPrefix}
  >>>
}