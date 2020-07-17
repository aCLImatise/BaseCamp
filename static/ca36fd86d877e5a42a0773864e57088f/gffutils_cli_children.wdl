version 1.0

task GffutilsCliChildren {
  input {
    String? limit
    String? exclude
    Boolean? exclude_self
    String db
    String ids
  }
  command <<<
    gffutils-cli children \
      ~{db} \
      ~{ids} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--exclude-self" false="" exclude_self}
  >>>
  parameter_meta {
    limit: "Feature type (string), or level (integer). No children below this level will be returned (default: -)"
    exclude: "Comma-separated list of featuretypes to filter out (like grep -v) (default: -)"
    exclude_self: "Use this to suppress reporting the IDs you've provided. (default: False)"
    db: "Database to use. If a GFF or GTF file is provided instead for this argument, a database will be created for you. This can take some time (several minutes), so it's best to create one ahead of time."
    ids: "Comma-separated list of IDs. These IDs, along with their children, will be returned (subject to --limit and --exclude). If none provided, use all genes in the database (default: -)"
  }
}