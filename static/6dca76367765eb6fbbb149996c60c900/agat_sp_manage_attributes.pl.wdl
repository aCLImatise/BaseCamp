version 1.0

task AgatSpManageAttributespl {
  input {
    File? gff
    Int? type
    Boolean? tag
    Boolean? add
    Boolean? cp
    File? _output_
    String agat_sp_manage_attributes_do_tpl
  }
  command <<<
    agat_sp_manage_attributes_pl \
      ~{agat_sp_manage_attributes_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (tag) then "--tag" else ""} \
      ~{if (add) then "--add" else ""} \
      ~{if (cp) then "--cp" else ""} \
      ~{if (_output_) then "-o" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    type: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking in account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    tag: "Attributes with the tag specified will be removed from the\\nfeature type specified by the option p (primary tag). List of\\ntag must be coma separated. /!\\\\ You must use \\\"\\\" if name\\ncontains spaces. Instead to remove an attribute, you can replace\\nits Tag by a new Tag using this formulation tagName/newTagName.\\nTo remove all attributes non mandatory (only ID and Parent are\\nmandatory) you can use the option with <all_attributes>\\nparameter."
    add: "Attribute specified will be added if doesn't exist. The value\\nwill be 'empty'."
    cp: "When attributes specied are with this form: tagName/newTagName.\\nBy using this <cp> parameter, the tag will not be modified but\\nduplicated with the new tagName."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_manage_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}