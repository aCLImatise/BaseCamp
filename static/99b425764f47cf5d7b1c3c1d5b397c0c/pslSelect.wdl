version 1.0

task PslSelect {
  input {
    File? qt_pairs
    Boolean? qpass
    File? queries
    File? query_pairs
    File? qt_start
    String? q_delim
    String in_psl
  }
  command <<<
    pslSelect \
      ~{in_psl} \
      ~{if defined(qt_pairs) then ("-qtPairs " +  '"' + qt_pairs + '"') else ""} \
      ~{if (qpass) then "-qPass" else ""} \
      ~{if defined(queries) then ("-queries " +  '"' + queries + '"') else ""} \
      ~{if defined(query_pairs) then ("-queryPairs " +  '"' + query_pairs + '"') else ""} \
      ~{if defined(qt_start) then ("-qtStart " +  '"' + qt_start + '"') else ""} \
      ~{if defined(q_delim) then ("-qDelim " +  '"' + q_delim + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    qt_pairs: "- file is tab-separated qName and tName pairs to select"
    qpass: "- pass all PSLs with queries that do not appear in qtPairs file at all\\n(default is to remove all PSLs for queries that are not in file)"
    queries: "- file has qNames to select"
    query_pairs: "- file is tab-separated pairs of qNames to select\\nwith new qName to substitute in output file"
    qt_start: "- file is tab-separate rows of qName,tName,tStart"
    q_delim: "- use only the part of the query name before this character"
    in_psl: ""
  }
  output {
    File out_stdout = stdout()
    File out_query_pairs = "${in_query_pairs}"
  }
}