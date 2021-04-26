version 1.0

task AgatSpManageAttributespl {
  input {
    File? gff
    Int? type
    Boolean? tag
    Boolean? add
    Boolean? cp
    Boolean? overwrite
    File? outfile
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
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    type: "primary tag option, case insensitive, list. Allow to specied the\\nfeature types that will be handled. You can specified a specific\\nfeature by given its primary tag name (column 3) as: cds, Gene,\\nMrNa You can specify directly all the feature of a particular\\nlevel: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By\\ndefault all feature are taking in account. fill the option by\\nthe value \\\"all\\\" will have the same behaviour."
    tag: "Attributes with the tag specified will be removed from the\\nfeature type specified by the option p (primary tag). List of\\ntag must be coma separated. /!\\\\ You must use \\\"\\\" if name\\ncontains spaces. Instead to remove an attribute, you can replace\\nits Tag by a new Tag using this formulation tagName/newTagName.\\nTo remove all attributes non mandatory (only ID and Parent are\\nmandatory) you can use the option with <all_attributes>\\nparameter."
    add: "Attribute with the tag specified will be added if doesn't exist.\\nThe value will be 'empty'."
    cp: "When tags specied are with this form: tagName/newTagName. By\\nusing this <cp> parameter, the attribute with the tag tagName\\nwill be duplicated with the new tag newTagName if no attribute\\nwith the tag newTagName already exits."
    overwrite: "When using -add parameter, if an attribute with the specificed\\ntag already exists, it will not be modified. When using --cp\\nparameter, if an attribute with the specificed newTagName\\nalready exists, it will not be modified. So using the\\n--overwrite parameter allows to overwrite the value of the\\nexisting attribute."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_manage_attributes_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}