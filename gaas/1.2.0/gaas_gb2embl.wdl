version 1.0

task GaasGb2embl.pl {
  input {
    Boolean? gb
    Boolean? _output_
  }
  command <<<
    gaas_gb2embl.pl \
      ~{true="--gb" false="" gb} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gb: "Input genebank file that will be read"
    _output_: ", --output , --out , --outfile or --embl Output embl file. If no output file is specified, the output will be written to STDOUT."
  }
}