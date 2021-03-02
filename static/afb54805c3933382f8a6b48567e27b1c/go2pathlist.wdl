version 1.0

task Go2pathlist {
  input {
    String? writes_parse_errors
    File? determines_parser_use
    Boolean? writer_formatformat_see
    File? use_cache
    String format
    String formats
    String go_ont
    String go_def
    String go_xref
    String go_assoc
    String obo_text
    String obo_xml
    String prolog
    String summary
    String path_list
    String obj_yaml
    String obj_storable
    String text_html
    String god_b_pre_store
    String ch_adodb_pre_store
  }
  command <<<
    go2pathlist \
      ~{format} \
      ~{formats} \
      ~{go_ont} \
      ~{go_def} \
      ~{go_xref} \
      ~{go_assoc} \
      ~{obo_text} \
      ~{obo_xml} \
      ~{prolog} \
      ~{summary} \
      ~{path_list} \
      ~{obj_yaml} \
      ~{obj_storable} \
      ~{text_html} \
      ~{god_b_pre_store} \
      ~{ch_adodb_pre_store} \
      ~{if defined(writes_parse_errors) then ("-e " +  '"' + writes_parse_errors + '"') else ""} \
      ~{if defined(determines_parser_use) then ("-p " +  '"' + determines_parser_use + '"') else ""} \
      ~{if (writer_formatformat_see) then "-w" else ""} \
      ~{if (use_cache) then "-use_cache" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    writes_parse_errors: "writes parse errors in XML - defaults to STDERR (there should be no\\nparse errors in well formed files)"
    determines_parser_use: "determines which parser to use; if left unspecified, will make a guess\\nbased on file suffix. See below for formats"
    writer_formatformat_see: "|writer FORMAT\\nformat for output - see below for list"
    use_cache: "If this switch is specified, then caching mode is turned on.\\nWith caching mode, the first time you parse a file, then an additional\\nfile will be exported in a special format that is fast to parse. This\\nfile will have the same filename as the original file, except it will\\nhave the \\\".cache\\\" suffix.\\nThe next time you parse the file, this program will automatically check\\nfor the existence of the \\\".cache\\\" file. If it exists, and is more recent\\nthan the file you specified, this is parsed instead. If it does not\\nexist, it is rebuilt.\\nThis will bring a speed improvement for b<some> of the output formats\\nbelow (such as pathlist). Most output formats work with event-based\\nparsing, so caching the object brings no benefit and will in fact be\\nslower than bypassing the cache"
    format: "ARGUMENTS"
    formats: "writable formats are"
    go_ont: "Files with suffix \\\".ontology\\\"\\nThese store the ontology DAGs"
    go_def: "Files with suffix \\\".defs\\\""
    go_xref: "External database references for GO terms\\nFiles with suffix \\\"2go\\\" (eg ec2go, metacyc2go)"
    go_assoc: "Annotations of genes or gene products using GO\\nFiles with prefix \\\"gene-association.\\\""
    obo_text: "Files with suffix \\\".obo\\\"\\nThis is a new file format replacement for the existing GO flat file\\nformats. It handles ontologies, definitions and xrefs (but not\\nassociations)"
    obo_xml: "Files with suffix \\\".obo.xml\\\" or \\\".obo-xml\\\"\\nThis is the XML version of the OBO flat file format above"
    prolog: "prolog facts - you will need a prolog compiler/interpreter to use\\nthese. You can reason over these facts using Obol or the forthcoming\\nBio-LP project"
    summary: "can be used on both ontology files and association files"
    path_list: "shows all paths to the root"
    obj_yaml: "a YAML representation of a GO::Model::Graph object"
    obj_storable: "A dump of the perl GO::Model::Graph object. You need Storable from\\nCPAN for this to work. This is intended to cache objects on the\\nfilesystem, for fast access. The obj_storable representation may not\\nbe portable"
    text_html: "A html-ified OBO output format"
    god_b_pre_store: "XML that maps directly to the GODB relational schema (can then be\\nloaded using stag-storenode.pl)"
    ch_adodb_pre_store: "XML that maps directly to the Chado relational schema (can then be\\nloaded using stag-storenode.pl)"
  }
  output {
    File out_stdout = stdout()
    File out_use_cache = "${in_use_cache}"
  }
}