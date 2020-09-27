version 1.0

task BpFastam9ToTablepl {
  input {
    String? e_slash_evalue
    Boolean? b_slash_bit_score
    String query_name
    String evalue
  }
  command <<<
    bp_fastam9_to_table_pl \
      ~{query_name} \
      ~{evalue} \
      ~{if defined(e_slash_evalue) then ("-e/--evalue " +  '"' + e_slash_evalue + '"') else ""} \
      ~{if defined(b_slash_bit_score) then ("-b/--bitscore " +  '"' + b_slash_bit_score + '"') else ""}
  >>>
  parameter_meta {
    e_slash_evalue: "-- filter by evalue"
    b_slash_bit_score: "-- filter by bitscore --header -- boolean flag to"
    query_name: "hit name"
    evalue: "bit score"
  }
  output {
    File out_stdout = stdout()
  }
}