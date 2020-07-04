version 1.0

task AgatSpProkkaInferNameFromAttributes.pl {
  input {
    Boolean? _output_
    File? gff
  }
  command <<<
    agat_sp_Prokka_inferNameFromAttributes.pl \
      ~{true="-o" false="" _output_} \
      ~{if defined(gff) then ("-gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    gff: ""
  }
}