version 1.0

task AgatConvertSpGff2gtf.pl {
  input {
    Boolean? _output_
    String? gff
  }
  command <<<
    agat_convert_sp_gff2gtf.pl \
      ~{true="-o" false="" _output_} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    _output_: ", --output , --out , --outfile or --gtf Output GTF file. If no output file is specified, the output will be written to STDOUT."
    gff: ""
  }
}