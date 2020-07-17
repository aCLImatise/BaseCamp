version 1.0

task Bank2contig {
  input {
    Boolean? display_compatible_version
    Boolean? use_eids_names
    Boolean? use_iids_names
    File? dump_just_eids
    File? dump_just_iids
    Boolean? just_create_file
    Boolean? simple_layout_style
    Boolean? sam_format_httpsamtoolssfnet
    Boolean? xml_format_suitable
    String bank_two_contig
  }
  command <<<
    bank2contig \
      ~{bank_two_contig} \
      ~{true="-v" false="" display_compatible_version} \
      ~{true="-e" false="" use_eids_names} \
      ~{true="-i" false="" use_iids_names} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""} \
      ~{true="-L" false="" just_create_file} \
      ~{true="-S" false="" simple_layout_style} \
      ~{true="-s" false="" sam_format_httpsamtoolssfnet} \
      ~{true="-T" false="" xml_format_suitable}
  >>>
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    use_eids_names: "Use EIDs for names (DEFAULT)"
    use_iids_names: "Use IIDs for names"
    dump_just_eids: "Dump just the contig eids listed in file"
    dump_just_iids: "Dump just the contig iids listed in file"
    just_create_file: "Just create a layout file (no sequence)"
    simple_layout_style: "Simple Layout style"
    sam_format_httpsamtoolssfnet: "SAM Format (http://samtools.sf.net)"
    xml_format_suitable: "XML Format suitable for DNPTrapper"
    bank_two_contig: "[options]  <bank path>"
  }
}