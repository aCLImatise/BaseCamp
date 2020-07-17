version 1.0

task AgatSqListAttributes.pl {
  input {
    String? gff
    String? primary_tag_option
    Boolean? _output_
  }
  command <<<
    agat_sq_list_attributes.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(primary_tag_option) then ("-p " +  '"' + primary_tag_option + '"') else ""} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    primary_tag_option: "primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value \"all\" will have the same behaviour."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}