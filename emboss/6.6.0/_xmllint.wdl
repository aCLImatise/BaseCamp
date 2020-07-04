version 1.0

task _xmllint {
  input {
    Boolean? no_catalogs
    Boolean? auto
    Boolean? xinclude
    Boolean? nox_include_node
    Boolean? no_fix_up_base_uris
    Boolean? load_dtd
    Boolean? dtd_attr
    Boolean? stream
    Boolean? walker
    String? pattern
    Boolean? chk_register
    String? relaxng
    String? schema
    String? schematron
    Boolean? sax_one
    Boolean? sax
    Boolean? old_xml_one_zero
    String? xpath
  }
  command <<<
    _xmllint \
      ~{true="--nocatalogs" false="" no_catalogs} \
      ~{true="--auto" false="" auto} \
      ~{true="--xinclude" false="" xinclude} \
      ~{true="--noxincludenode" false="" nox_include_node} \
      ~{true="--nofixup-base-uris" false="" no_fix_up_base_uris} \
      ~{true="--loaddtd" false="" load_dtd} \
      ~{true="--dtdattr" false="" dtd_attr} \
      ~{true="--stream" false="" stream} \
      ~{true="--walker" false="" walker} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{true="--chkregister" false="" chk_register} \
      ~{if defined(relaxng) then ("--relaxng " +  '"' + relaxng + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(schematron) then ("--schematron " +  '"' + schematron + '"') else ""} \
      ~{true="--sax1" false="" sax_one} \
      ~{true="--sax" false="" sax} \
      ~{true="--oldxml10" false="" old_xml_one_zero} \
      ~{if defined(xpath) then ("--xpath " +  '"' + xpath + '"') else ""}
  >>>
  parameter_meta {
    no_catalogs: ": deactivate all catalogs"
    auto: ": generate a small doc on the fly"
    xinclude: ": do XInclude processing"
    nox_include_node: ": same but do not generate XInclude nodes"
    no_fix_up_base_uris: ": do not fixup xml:base uris"
    load_dtd: ": fetch external DTD"
    dtd_attr: ": loaddtd + populate the tree with inherited attributes "
    stream: ": use the streaming interface to process very large files"
    walker: ": create a reader and walk though the resulting doc"
    pattern: ": test the pattern support"
    chk_register: ": verify the node registration code"
    relaxng: ": do RelaxNG validation against the schema"
    schema: ": do validation against the WXS schema"
    schematron: ": do validation against a schematron"
    sax_one: ": use the old SAX1 interfaces for processing"
    sax: ": do not build a tree but work just at the SAX level"
    old_xml_one_zero: ": use XML-1.0 parsing rules before the 5th edition"
    xpath: ": evaluate the XPath expression, imply --noout"
  }
}