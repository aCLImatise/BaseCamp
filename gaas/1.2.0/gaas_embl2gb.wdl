version 1.0

task GaasEmbl2gb.pl {
  input {
    Boolean? embl
    Boolean? _output_
  }
  command <<<
    gaas_embl2gb.pl \
      ~{true="-embl" false="" embl} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    embl: "Input EMBL file that will be read"
    _output_: ", --output , --out , --outfile or --gb Output Genbank file. If no output file is specified, the output will be written to STDOUT."
  }
}