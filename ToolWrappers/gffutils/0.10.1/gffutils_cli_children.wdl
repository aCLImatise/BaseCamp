version 1.0

task GffutilscliChildren {
  input {
    Int? limit
    String? exclude
    Boolean? exclude_self
    String db
    String ids
  }
  command <<<
    gffutils_cli children \
      ~{db} \
      ~{ids} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (exclude_self) then "--exclude-self" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    limit: "Feature type (string), or level (integer). No children\\nbelow this level will be returned (default: -)"
    exclude: "Comma-separated list of featuretypes to filter out (like\\ngrep -v) (default: -)"
    exclude_self: "Use this to suppress reporting the IDs you've provided.\\n(default: False)\\n"
    db: "Database to use. If a GFF or GTF file is provided instead\\nfor this argument, a database will be created for you.\\nThis can take some time (several minutes), so it's best\\nto create one ahead of time."
    ids: "Comma-separated list of IDs. These IDs, along with their\\nchildren, will be returned (subject to --limit and\\n--exclude). If none provided, use all genes in the\\ndatabase (default: -)"
  }
  output {
    File out_stdout = stdout()
  }
}