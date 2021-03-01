version 1.0

task Bank2contig {
  input {
    Boolean? display_compatible_version
    Boolean? use_eids_default
    Boolean? use_iids_names
    File? dump_just_eids
    File? dump_just_iids
    Boolean? just_create_file
    Boolean? simple_layout_style
    Boolean? sam_format_httpsamtoolssfnet
    Boolean? xml_format_suitable
    Int bank_two_contig
  }
  command <<<
    bank2contig \
      ~{bank_two_contig} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if (use_eids_default) then "-e" else ""} \
      ~{if (use_iids_names) then "-i" else ""} \
      ~{if defined(dump_just_eids) then ("-E " +  '"' + dump_just_eids + '"') else ""} \
      ~{if defined(dump_just_iids) then ("-I " +  '"' + dump_just_iids + '"') else ""} \
      ~{if (just_create_file) then "-L" else ""} \
      ~{if (simple_layout_style) then "-S" else ""} \
      ~{if (sam_format_httpsamtoolssfnet) then "-s" else ""} \
      ~{if (xml_format_suitable) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    display_compatible_version: "Display the compatible bank version"
    use_eids_default: "Use EIDs for names (DEFAULT)"
    use_iids_names: "Use IIDs for names"
    dump_just_eids: "Dump just the contig eids listed in file"
    dump_just_iids: "Dump just the contig iids listed in file"
    just_create_file: "Just create a layout file (no sequence)"
    simple_layout_style: "Simple Layout style"
    sam_format_httpsamtoolssfnet: "SAM Format (http://samtools.sf.net)"
    xml_format_suitable: "XML Format suitable for DNPTrapper"
    bank_two_contig: "[options]  <bank path>"
  }
  output {
    File out_stdout = stdout()
  }
}