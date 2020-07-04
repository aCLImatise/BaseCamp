version 1.0

task AgatSpManageAttributes.pl {
  input {
    String? gff
    String? type
    Boolean? tag
    Boolean? add
    Boolean? cp
    Boolean? _output_
  }
  command <<<
    agat_sp_manage_attributes.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{true="--tag" false="" tag} \
      ~{true="--add" false="" add} \
      ~{true="--cp" false="" cp} \
      ~{true="-o" false="" _output_}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    type: "primary tag option, case insensitive, list. Allow to specied the feature types that will be handled. You can specified a specific feature by given its primary tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default all feature are taking in account. fill the option by the value \"all\" will have the same behaviour."
    tag: "Attributes with the tag specified will be removed from the feature type specified by the option p (primary tag). List of tag must be coma separated. /!\\ You must use \"\" if name contains spaces. Instead to remove an attribute, you can replace its Tag by a new Tag using this formulation tagName/newTagName. To remove all attributes non mandatory (only ID and Parent are mandatory) you can use the option with <all_attributes> parameter."
    add: "Attribute specified will be added if doesn't exist. The value will be 'empty'."
    cp: "When attributes specied are with this form: tagName/newTagName. By using this <cp> parameter, the tag will not be modified but duplicated with the new tagName."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
  }
}