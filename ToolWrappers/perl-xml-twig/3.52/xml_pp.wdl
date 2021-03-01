version 1.0

task XmlPp {
  input {
    Boolean? edits_files_provided
    String? style_use_pretty
    Boolean? tagspreserves_white_spaces
    File? use_xmltwig_outputencoding
    Boolean? loads_documents_see
    File? read_list_process
    Boolean? verbose_list_current
    String twig
  }
  command <<<
    xml_pp \
      ~{twig} \
      ~{if (edits_files_provided) then "-i" else ""} \
      ~{if defined(style_use_pretty) then ("-s " +  '"' + style_use_pretty + '"') else ""} \
      ~{if (tagspreserves_white_spaces) then "-p" else ""} \
      ~{if defined(use_xmltwig_outputencoding) then ("-e " +  '"' + use_xmltwig_outputencoding + '"') else ""} \
      ~{if (loads_documents_see) then "-l" else ""} \
      ~{if defined(read_list_process) then ("-f " +  '"' + read_list_process + '"') else ""} \
      ~{if (verbose_list_current) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    edits_files_provided: "[<extension>]\\nedits the file(s) in place, if an extension is provided (no space\\nbetween \\\"-i\\\" and the extension) then the original file is backed-up\\nwith that extension\\nThe rules for the extension are the same as Perl's (see perldoc\\nperlrun): if the extension includes no \\\"*\\\" then it is appended to\\nthe original file name, If the extension does contain one or more\\n\\\"*\\\" characters, then each \\\"*\\\" is replaced with the current filename."
    style_use_pretty: "the style to use for pretty printing: none, nsgmls, nice, indented,\\nrecord, or record_c (see XML::Twig docs for the exact description of\\nthose styles), 'indented' by default"
    tagspreserves_white_spaces: "<tag(s)>\\npreserves white spaces in tags. You can use several \\\"-p\\\" options or\\nquote the tags if you need more than one"
    use_xmltwig_outputencoding: "use XML::Twig output_encoding (based on Text::Iconv or Unicode::Map8\\nand Unicode::String) to set the output encoding. By default the\\noriginal encoding is preserved.\\nIf this option is used the XML declaration is updated (and created\\nif there was none).\\nMake sure that the encoding is supported by the parser you use if\\nyou want to be able to process the pretty_printed file (XML::Parser\\ndoes not support 'latin1' for example, you have to use 'iso-8859-1')"
    loads_documents_see: "loads the documents in memory instead of outputting them as they are\\nbeing parsed.\\nThis prevents a bug (see BUGS) but uses more memory"
    read_list_process: "read the list of files to process from <file>, one per line"
    verbose_list_current: "verbose (list the current file being processed)"
    twig: "OPTIONS"
  }
  output {
    File out_stdout = stdout()
    File out_use_xmltwig_outputencoding = "${in_use_xmltwig_outputencoding}"
  }
}