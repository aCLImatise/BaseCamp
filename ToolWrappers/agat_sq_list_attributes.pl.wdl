version 1.0

task AgatSqListAttributespl {
  input {
    File? gff
    Int? primary_tag_option
    File? _output_
    String agat_sq_list_attributes_do_tpl
  }
  command <<<
    agat_sq_list_attributes_pl \
      ~{agat_sq_list_attributes_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(primary_tag_option) then ("-p " +  '"' + primary_tag_option + '"') else ""} \
      ~{if (_output_) then "-o" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    primary_tag_option: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking in account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sq_list_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}