version 1.0

task BpFastam9ToTablepl {
  input {
    String? _filter_evalue
    Boolean? bit_score
    String query_name
    String bit_score
  }
  command <<<
    bp_fastam9_to_table_pl \
      ~{query_name} \
      ~{bit_score} \
      ~{if defined(_filter_evalue) then ("--evalue " +  '"' + _filter_evalue + '"') else ""} \
      ~{if defined(bit_score) then ("--bitscore " +  '"' + bit_score + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _filter_evalue: "-- filter by evalue"
    bit_score: "bit score"
    query_name: "hit name"
  }
  output {
    File out_stdout = stdout()
  }
}