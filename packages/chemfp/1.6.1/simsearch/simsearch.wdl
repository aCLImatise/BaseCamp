version 1.0

task Simsearch {
  input {
    Int? k_nearest
    Float? threshold
    File? queries
    Boolean? nxn
    String? query
    String? hex_query
    Int? query_id
    File? query_structures
    File? query_format
    File? target_format
    File? id_tag
    String? errors
    File? output_filename_default
    Boolean? count
    Int? batch_size
    Boolean? scan
    Boolean? memory
    Boolean? times
  }
  command <<<
    simsearch \
      ~{if defined(k_nearest) then ("--k-nearest " +  '"' + k_nearest + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(queries) then ("--queries " +  '"' + queries + '"') else ""} \
      ~{if (nxn) then "--NxN" else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(hex_query) then ("--hex-query " +  '"' + hex_query + '"') else ""} \
      ~{if defined(query_id) then ("--query-id " +  '"' + query_id + '"') else ""} \
      ~{if defined(query_structures) then ("--query-structures " +  '"' + query_structures + '"') else ""} \
      ~{if defined(query_format) then ("--query-format " +  '"' + query_format + '"') else ""} \
      ~{if defined(target_format) then ("--target-format " +  '"' + target_format + '"') else ""} \
      ~{if defined(id_tag) then ("--id-tag " +  '"' + id_tag + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(output_filename_default) then ("--output " +  '"' + output_filename_default + '"') else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if (scan) then "--scan" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (times) then "--times" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0"
  }
  parameter_meta {
    k_nearest: "select the k nearest neighbors (use 'all' for all\\nneighbors)"
    threshold: "minimum similarity score threshold"
    queries: "filename containing the query fingerprints"
    nxn: "use the targets as the queries, and exclude the self-\\nsimilarity term"
    query: "query as a structure record (default format: 'smi')"
    hex_query: "query in hex"
    query_id: "id for the query or hex-query (default: 'Query1'"
    query_structures: "read strutures"
    query_format: "input query format (default uses the file extension,\\nelse 'fps' for --queries and 'smi' for query\\nstructures)"
    target_format: "input target format (default uses the file extension,\\nelse 'fps')"
    id_tag: "tag containing the record id if --query-structures is\\nan SD file)"
    errors: "how should structure parse errors be handled?\\n(default=ignore)"
    output_filename_default: "output filename (default is stdout)"
    count: "report counts"
    batch_size: "batch size"
    scan: "scan the file to find matches (low memory overhead)"
    memory: "build and search an in-memory data structure (faster\\nfor multiple queries)"
    times: "report load and execution times to stderr"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_default = "${in_output_filename_default}"
  }
}