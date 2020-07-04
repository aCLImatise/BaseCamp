version 1.0

task Ri {
  input {
    Boolean? _interactive_interactive
    Boolean? _show_documentation
    Boolean? _pager_send
    Boolean? synonym__nopager
    String? width
    Boolean? server
    String? format
    String? dump
    String library_dot
  }
  command <<<
    ri \
      ~{library_dot} \
      ~{true="-i" false="" _interactive_interactive} \
      ~{true="-a" false="" _show_documentation} \
      ~{true="-l" false="" _pager_send} \
      ~{true="-T" false="" synonym__nopager} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{true="--server" false="" server} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""}
  >>>
  parameter_meta {
    _interactive_interactive: ", --[no-]interactive           In interactive mode you can repeatedly look up methods with autocomplete."
    _show_documentation: ", --[no-]all                   Show all documentation for a class or module."
    _pager_send: ", --[no-]list                  List classes ri knows about. --[no-]pager                 Send output directly to stdout, rather than to a pager."
    synonym__nopager: "Synonym for --no-pager"
    width: "Set the width of the output."
    server: "[PORT]              Run RDoc server on the given port. The default port is 8214."
    format: "Uses the selected formatter. The default formatter is bs for paged output and ansi otherwise. Valid formatters are: ansi bs markdown rdoc"
    dump: "Dumps data from an ri cache or data file"
    library_dot: "Defaults to true."
  }
}