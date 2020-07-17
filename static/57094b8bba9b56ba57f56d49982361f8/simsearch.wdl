version 1.0

task Simsearch {
  input {
    String? k_nearest
    String? threshold
    String? queries
    Boolean? nxn
    String? query
    String? hex_query
    String? query_id
    String? query_format
    String? target_format
    File? output_filename_default
    Boolean? count
    String? batch_size
    Boolean? scan
    Boolean? memory
    Boolean? times
    String target_filename
  }
  command <<<
    simsearch \
      ~{target_filename} \
      ~{if defined(k_nearest) then ("--k-nearest " +  '"' + k_nearest + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(queries) then ("--queries " +  '"' + queries + '"') else ""} \
      ~{true="--NxN" false="" nxn} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(hex_query) then ("--hex-query " +  '"' + hex_query + '"') else ""} \
      ~{if defined(query_id) then ("--query-id " +  '"' + query_id + '"') else ""} \
      ~{if defined(query_format) then ("--query-format " +  '"' + query_format + '"') else ""} \
      ~{if defined(target_format) then ("--target-format " +  '"' + target_format + '"') else ""} \
      ~{if defined(output_filename_default) then ("--output " +  '"' + output_filename_default + '"') else ""} \
      ~{true="--count" false="" count} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{true="--scan" false="" scan} \
      ~{true="--memory" false="" memory} \
      ~{true="--times" false="" times}
  >>>
  parameter_meta {
    k_nearest: "select the k nearest neighbors (use 'all' for all neighbors)"
    threshold: "minimum similarity score threshold"
    queries: "filename containing the query fingerprints"
    nxn: "use the targets as the queries, and exclude the self- similarity term"
    query: "query as a structure record (default format: 'smi')"
    hex_query: "query in hex"
    query_id: "id for the query or hex-query (default: 'Query1'"
    query_format: "input query format (default uses the file extension, else 'fps')"
    target_format: "input target format (default uses the file extension, else 'fps')"
    output_filename_default: "output filename (default is stdout)"
    count: "report counts"
    batch_size: "batch size"
    scan: "scan the file to find matches (low memory overhead)"
    memory: "build and search an in-memory data structure (faster for multiple queries)"
    times: "report load and execution times to stderr"
    target_filename: "target filename"
  }
}