version 1.0

task FastxBarcodeSplitter.pl {
  input {
    Boolean? prefix
  }
  command <<<
    fastx_barcode_splitter.pl \
      ~{true="--prefix" false="" prefix}
  >>>
  parameter_meta {
    prefix: "/tmp/bla_ --suffix \".txt\""
  }
}