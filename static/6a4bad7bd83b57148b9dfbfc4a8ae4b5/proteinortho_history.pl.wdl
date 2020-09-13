version 1.0

task ProteinorthoHistorypl {
  input {
    Directory? project
    Boolean? no_quotemeta
    Boolean? notable_format
    Boolean? delim
    String query
  }
  command <<<
    proteinortho_history_pl \
      ~{query} \
      ~{if defined(project) then ("-project " +  '"' + project + '"') else ""} \
      ~{if (no_quotemeta) then "-noquotemeta" else ""} \
      ~{if (notable_format) then "-notableformat" else ""} \
      ~{if (delim) then "-delim" else ""}
  >>>
  parameter_meta {
    project: "The project name (as specified in proteinortho with -project) (default:auto detect in the current directory)"
    no_quotemeta: "(optional) If set, then the query will not be escaped."
    notable_format: "(optional) If -step= is set too, then the tables are not formatted and a plain csv is printed instead."
    delim: "=                                         (optional) Defines the delimiter character for spliting the query (if you want to search for 2 genes/proteins)"
    query: "A string of a single gene/protein or 2 separated by a comma or a whitespace (the input is escaped using quotemeta, use -noquotemeta to avoid this)"
  }
  output {
    File out_stdout = stdout()
  }
}