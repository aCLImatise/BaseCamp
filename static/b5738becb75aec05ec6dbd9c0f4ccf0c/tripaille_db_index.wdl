version 1.0

task TripailleDbIndex {
  input {
    String? mode
    String? table
    String? index_name
    Int? queues
    String? fields
    String? links
    String? tokenizer
    String? token_filters
    Boolean? exposed
    String? index_url
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
      ~{true="--exposed" false="" exposed} \
      ~{if defined(index_url) then ("--index_url " +  '"' + index_url + '"') else ""} \
      ~{if defined(job_name) then ("--job_name " +  '"' + job_name + '"') else ""} \
      ~{true="--no_wait" false="" no_wait}
  >>>
  parameter_meta {
    mode: "Indexing mode: 'website' to index the website , 'nodes' for the website nodes, 'entities' for the website entities (Tripal 3), 'table' to index a single table, 'gene' to build a Gene search index (Tripal 3 only) (default: website) ('website' default to 'nodes' for Tripal 2, 'entities' for Tripal 3)  [default: website]"
    table: "Table to index (only in 'table' mode)"
    index_name: "Index name (only in 'table' mode)"
    queues: "Number of indexing task queues (Tripal 2 only) [default: 10]"
    fields: "Fields to index (only in 'table' mode), syntax: <field_name>|<field_type>, field_type should be one of 'string' (Tripal2), 'text' (Tripal3), 'keyword', 'date', 'long', 'double', 'boolean', 'ip', 'object', 'nested', 'geo_point', 'geo_shape', or 'completion'"
    links: "List of links to show to users, syntax: <column-where- to-show-the-link>|</your/url/[any-column-name]> (Tripal 2 only)"
    tokenizer: "Tokenizer to use (only in 'table' mode) (one of 'standard', 'letter', 'lowercase', 'whitespace', 'uax_url_email', 'classic', 'ngram', 'edge_ngram', 'keywordx', 'pattern', or 'path_hierarchy'; default='standard')  [default: standard]"
    token_filters: "Token filters (Tripal 3 only) (only in 'table' mode) (available filters are 'standard', 'asciifolding', 'length', 'lowercase', 'uppercase') (Default to ['standard', 'lowercase'])"
    exposed: "\"Expose the index (read-only) to other websites"
    index_url: "In order for other sites to link back to your results page, you must specify a path where the form for this index can be reached"
    job_name: "Name of the job"
    no_wait: "Do not wait for job to complete"
  }
}