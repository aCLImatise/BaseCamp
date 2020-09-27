version 1.0

task TripailleDbIndex {
  input {
    Int? mode
    String? table
    String? index_name
    Int? queues
    Boolean? fields
    Int? links
    String? tokenizer
    Int? token_filters
    Boolean? exposed
    File? index_url
    String? job_name
    Boolean? no_wait
  }
  command <<<
    tripaille db index \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(index_name) then ("--index_name " +  '"' + index_name + '"') else ""} \
      ~{if defined(queues) then ("--queues " +  '"' + queues + '"') else ""} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(links) then ("--links " +  '"' + links + '"') else ""} \
      ~{if defined(tokenizer) then ("--tokenizer " +  '"' + tokenizer + '"') else ""} \
      ~{if defined(token_filters) then ("--token_filters " +  '"' + token_filters + '"') else ""} \
      ~{if (exposed) then "--exposed" else ""} \
      ~{if defined(index_url) then ("--index_url " +  '"' + index_url + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{if (no_wait) then "--no_wait" else ""}
  >>>
  parameter_meta {
    mode: "Indexing mode: 'website' to index the website ,\\n'nodes' for the website nodes, 'entities' for the\\nwebsite entities (Tripal 3), 'table' to index a single\\ntable, 'gene' to build a Gene search index (Tripal 3\\nonly) (default: website) ('website' default to 'nodes'\\nfor Tripal 2, 'entities' for Tripal 3)  [default:\\nwebsite]"
    table: "Table to index (only in 'table' mode)"
    index_name: "Index name (only in 'table' mode)"
    queues: "Number of indexing task queues (Tripal 2 only)\\n[default: 10]"
    fields: "Fields to index (only in 'table' mode), syntax:\\n<field_name>|<field_type>, field_type should be one of\\n'string' (Tripal2), 'text' (Tripal3), 'keyword',\\n'date', 'long', 'double', 'boolean', 'ip', 'object',\\n'nested', 'geo_point', 'geo_shape', or 'completion'"
    links: "List of links to show to users, syntax: <column-where-\\nto-show-the-link>|</your/url/[any-column-name]>\\n(Tripal 2 only)"
    tokenizer: "Tokenizer to use (only in 'table' mode) (one of\\n'standard', 'letter', 'lowercase', 'whitespace',\\n'uax_url_email', 'classic', 'ngram', 'edge_ngram',\\n'keywordx', 'pattern', or 'path_hierarchy';\\ndefault='standard')  [default: standard]"
    token_filters: "Token filters (Tripal 3 only) (only in 'table' mode)\\n(available filters are 'standard', 'asciifolding',\\n'length', 'lowercase', 'uppercase') (Default to\\n['standard', 'lowercase'])"
    exposed: "\\\"Expose the index (read-only) to other websites"
    index_url: "In order for other sites to link back to your results\\npage, you must specify a path where the form for this\\nindex can be reached"
    job_name: "Name of the job"
    no_wait: "Do not wait for job to complete"
  }
  output {
    File out_stdout = stdout()
  }
}