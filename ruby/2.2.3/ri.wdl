version 1.0

task Ri {
  input {
    Boolean? _interactive_interactive
    Boolean? _show_documentation
    Boolean? synonym__nopager
    String? width
    Boolean? server
    String? format
    String? doc_dir
    Boolean? no_standard_docs
    File? dump
    String module_dot
    String library_dot
  }
  command <<<
    ri \
      ~{module_dot} \
      ~{library_dot} \
      ~{if (_interactive_interactive) then "-i" else ""} \
      ~{if (_show_documentation) then "-a" else ""} \
      ~{if (synonym__nopager) then "-T" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (server) then "--server" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(doc_dir) then ("--doc-dir " +  '"' + doc_dir + '"') else ""} \
      ~{if (no_standard_docs) then "--no-standard-docs" else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    _interactive_interactive: ", --[no-]interactive           In interactive mode you can repeatedly\\nlook up methods with autocomplete."
    _show_documentation: ", --[no-]all                   Show all documentation for a class or"
    synonym__nopager: "Synonym for --no-pager"
    width: "Set the width of the output."
    server: "[PORT]              Run RDoc server on the given port.\\nThe default port is 8214."
    format: "Uses the selected formatter. The default\\nformatter is bs for paged output and ansi\\notherwise. Valid formatters are:\\nansi bs markdown rdoc"
    doc_dir: "List of directories from which to source\\ndocumentation in addition to the standard\\ndirectories.  May be repeated."
    no_standard_docs: "Do not include documentation from\\nthe Ruby standard library, site_lib,\\ninstalled gems, or ~/.rdoc.\\nUse with --doc-dir"
    dump: "Dumps data from an ri cache or data file"
    module_dot: "-l, --[no-]list                  List classes ri knows about."
    library_dot: "Defaults to true."
  }
  output {
    File out_stdout = stdout()
  }
}