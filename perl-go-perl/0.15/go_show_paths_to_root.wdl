version 1.0

task GoShowPathsToRoot.pl {
  input {
    String? writes_parse_errors
    String? determines_parser_use
  }
  command <<<
    go-show-paths-to-root.pl \
      ~{if defined(writes_parse_errors) then ("-e " +  '"' + writes_parse_errors + '"') else ""} \
      ~{if defined(determines_parser_use) then ("-p " +  '"' + determines_parser_use + '"') else ""}
  >>>
  parameter_meta {
    writes_parse_errors: "writes parse errors in XML - defaults to STDERR (there should be no parse errors in well formed files)"
    determines_parser_use: "determines which parser to use; if left unspecified, will make a guess based on file suffix. See below for formats"
  }
}