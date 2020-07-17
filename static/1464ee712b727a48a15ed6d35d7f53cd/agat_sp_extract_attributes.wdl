version 1.0

task AgatSpExtractAttributes.pl {
  input {
    String? gff
    String? primary_tag_option
    Boolean? attribute
    String? merge
    Boolean? default_when_attribute
    Boolean? _output_
  }
  command <<<
    agat_sp_extract_attributes.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(primary_tag_option) then ("-p " +  '"' + primary_tag_option + '"') else ""} \
      ~{true="--attribute" false="" attribute} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{true="-d" false="" default_when_attribute} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    primary_tag_option: "primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value \"all\" will have the same behaviour."
    attribute: "attribute tag. The value of the attribute tag specified will be extracted from the feature type specified by the option -p. List of attributes must be coma separated."
    merge: "By default the values of each attribute tag is writen in its dedicated file. To write the values of all tags in only one file use this option."
    default_when_attribute: "By default when an attribute is not found for a feature, a dot (.) is reported. If you don't want anything to be printed in such case use this option."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}