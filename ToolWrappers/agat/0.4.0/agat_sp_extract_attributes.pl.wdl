version 1.0

task AgatSpExtractAttributespl {
  input {
    File? gff
    Int? primary_tag_option
    Boolean? attribute
    File? merge
    Boolean? default_when_attribute
    File? outfile
    String agat_sp_extract_attributes_do_tpl
  }
  command <<<
    agat_sp_extract_attributes_pl \
      ~{agat_sp_extract_attributes_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(primary_tag_option) then ("-p " +  '"' + primary_tag_option + '"') else ""} \
      ~{if (attribute) then "--attribute" else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if (default_when_attribute) then "-d" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    primary_tag_option: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking in account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    attribute: "attribute tag. The value of the attribute tag specified will be\\nextracted from the feature type specified by the option -p. List\\nof attributes must be coma separated."
    merge: "By default the values of each attribute tag is writen in its\\ndedicated file. To write the values of all tags in only one file\\nuse this option."
    default_when_attribute: "By default when an attribute is not found for a feature, a dot\\n(.) is reported. If you don't want anything to be printed in\\nsuch case use this option."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_extract_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}