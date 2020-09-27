version 1.0

task Xmllint {
  input {
    Boolean? debug
    Boolean? shell
    Boolean? debug_ent
    Boolean? copy
    Boolean? recover
    Boolean? huge
    Boolean? no_ent
    Boolean? no_enc
    Boolean? no_out
    Boolean? path
    Boolean? load_trace
    Boolean? no_net
    Boolean? no_compact
    Boolean? html_out
    Boolean? nowrap
    Boolean? valid
    Boolean? post_valid
    String? dtd_valid
    String? dtd_valid_fpi
    Boolean? timing
    File? o_file_save
    Boolean? repeat
    Boolean? insert
    Boolean? compress
    Boolean? html
    Boolean? xml_out
    Boolean? node_fdtd
    Boolean? push
    Boolean? push_small
    Boolean? memory
    String? maxmem
    Boolean? no_warning
    Boolean? no_blanks
    Boolean? no_cdata
    Boolean? format
    String? encode
    Boolean? drop_dtd
    Int? pretty
    Boolean? cone_four_n
    Boolean? cone_four_none_one
    Boolean? exc_cone_four_n
    Boolean? ns_clean
    Boolean? test_io
    Boolean? catalogs
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
      ~{if (debug) then "--debug" else ""} \
      ~{if (shell) then "--shell" else ""} \
      ~{if (debug_ent) then "--debugent" else ""} \
      ~{if (copy) then "--copy" else ""} \
      ~{if (recover) then "--recover" else ""} \
      ~{if (huge) then "--huge" else ""} \
      ~{if (no_ent) then "--noent" else ""} \
      ~{if (no_enc) then "--noenc" else ""} \
      ~{if (no_out) then "--noout" else ""} \
      ~{if (path) then "--path" else ""} \
      ~{if (load_trace) then "--load-trace" else ""} \
      ~{if (no_net) then "--nonet" else ""} \
      ~{if (no_compact) then "--nocompact" else ""} \
      ~{if (html_out) then "--htmlout" else ""} \
      ~{if (nowrap) then "--nowrap" else ""} \
      ~{if (valid) then "--valid" else ""} \
      ~{if (post_valid) then "--postvalid" else ""} \
      ~{if defined(dtd_valid) then ("--dtdvalid " +  '"' + dtd_valid + '"') else ""} \
      ~{if defined(dtd_valid_fpi) then ("--dtdvalidfpi " +  '"' + dtd_valid_fpi + '"') else ""} \
      ~{if (timing) then "--timing" else ""} \
      ~{if defined(o_file_save) then ("--output " +  '"' + o_file_save + '"') else ""} \
      ~{if (repeat) then "--repeat" else ""} \
      ~{if (insert) then "--insert" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (xml_out) then "--xmlout" else ""} \
      ~{if (node_fdtd) then "--nodefdtd" else ""} \
      ~{if (push) then "--push" else ""} \
      ~{if (push_small) then "--pushsmall" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if defined(maxmem) then ("--maxmem " +  '"' + maxmem + '"') else ""} \
      ~{if (no_warning) then "--nowarning" else ""} \
      ~{if (no_blanks) then "--noblanks" else ""} \
      ~{if (no_cdata) then "--nocdata" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(encode) then ("--encode " +  '"' + encode + '"') else ""} \
      ~{if (drop_dtd) then "--dropdtd" else ""} \
      ~{if defined(pretty) then ("--pretty " +  '"' + pretty + '"') else ""} \
      ~{if (cone_four_n) then "--c14n" else ""} \
      ~{if (cone_four_none_one) then "--c14n11" else ""} \
      ~{if (exc_cone_four_n) then "--exc-c14n" else ""} \
      ~{if (ns_clean) then "--nsclean" else ""} \
      ~{if (test_io) then "--testIO" else ""} \
      ~{if (catalogs) then "--catalogs" else ""} \
      ~{if (no_catalogs) then "--nocatalogs" else ""} \
      ~{if (auto) then "--auto" else ""} \
      ~{if (xinclude) then "--xinclude" else ""} \
      ~{if (nox_include_node) then "--noxincludenode" else ""} \
      ~{if (no_fix_up_base_uris) then "--nofixup-base-uris" else ""} \
      ~{if (load_dtd) then "--loaddtd" else ""} \
      ~{if (dtd_attr) then "--dtdattr" else ""} \
      ~{if (stream) then "--stream" else ""} \
      ~{if (walker) then "--walker" else ""} \
      ~{if defined(pattern) then ("--pattern " +  '"' + pattern + '"') else ""} \
      ~{if (chk_register) then "--chkregister" else ""} \
      ~{if defined(relaxng) then ("--relaxng " +  '"' + relaxng + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if defined(schematron) then ("--schematron " +  '"' + schematron + '"') else ""} \
      ~{if (sax_one) then "--sax1" else ""} \
      ~{if (sax) then "--sax" else ""} \
      ~{if (old_xml_one_zero) then "--oldxml10" else ""} \
      ~{if defined(xpath) then ("--xpath " +  '"' + xpath + '"') else ""}
  >>>
  parameter_meta {
    debug: ": dump a debug tree of the in-memory document"
    shell: ": run a navigating shell"
    debug_ent: ": debug the entities defined in the document"
    copy: ": used to test the internal copy implementation"
    recover: ": output what was parsable on broken XML documents"
    huge: ": remove any internal arbitrary parser limits"
    no_ent: ": substitute entity references by their value"
    no_enc: ": ignore any encoding specified inside the document"
    no_out: ": don't output the result tree"
    path: "'paths': provide a set of paths for resources"
    load_trace: ": print trace of all external entities loaded"
    no_net: ": refuse to fetch DTDs or entities over network"
    no_compact: ": do not generate compact text nodes"
    html_out: ": output results as HTML"
    nowrap: ": do not put HTML doc wrapper"
    valid: ": validate the document in addition to std well-formed check"
    post_valid: ": do a posteriori validation, i.e after parsing"
    dtd_valid: ": do a posteriori validation against a given DTD"
    dtd_valid_fpi: ": same but name the DTD with a Public Identifier"
    timing: ": print some timings"
    o_file_save: "or -o file: save to a given file"
    repeat: ": repeat 100 times, for timing or profiling"
    insert: ": ad-hoc test for valid insertions"
    compress: ": turn on gzip compression of output"
    html: ": use the HTML parser"
    xml_out: ": force to use the XML serializer when using --html"
    node_fdtd: ": do not default HTML doctype"
    push: ": use the push mode of the parser"
    push_small: ": use the push mode of the parser using tiny increments"
    memory: ": parse from memory"
    maxmem: ": limits memory allocation to nbbytes bytes"
    no_warning: ": do not emit warnings from parser/validator"
    no_blanks: ": drop (ignorable?) blanks spaces"
    no_cdata: ": replace cdata section with text nodes"
    format: ": reformat/reindent the output"
    encode: ": output in the given encoding"
    drop_dtd: ": remove the DOCTYPE of the input docs"
    pretty: ": pretty-print in a particular style\\n0 Do not pretty print\\n1 Format the XML content, as --format\\n2 Add whitespace inside tags, preserving content"
    cone_four_n: ": save in W3C canonical format v1.0 (with comments)"
    cone_four_none_one: ": save in W3C canonical format v1.1 (with comments)"
    exc_cone_four_n: ": save in W3C exclusive canonical format (with comments)"
    ns_clean: ": remove redundant namespace declarations"
    test_io: ": test user I/O support"
    catalogs: ": use SGML catalogs from $SGML_CATALOG_FILES\\notherwise XML Catalogs starting from\\nfile:///etc/xml/catalog are activated by default"
    no_catalogs: ": deactivate all catalogs"
    auto: ": generate a small doc on the fly"
    xinclude: ": do XInclude processing"
    nox_include_node: ": same but do not generate XInclude nodes"
    no_fix_up_base_uris: ": do not fixup xml:base uris"
    load_dtd: ": fetch external DTD"
    dtd_attr: ": loaddtd + populate the tree with inherited attributes"
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
  output {
    File out_stdout = stdout()
  }
}