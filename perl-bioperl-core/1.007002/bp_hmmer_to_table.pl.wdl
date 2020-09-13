version 1.0

task BpHmmerToTablepl {
  input {
    String? e_slash_evalue
    Boolean? b_slash_bit_score
    String score
  }
  command <<<
    bp_hmmer_to_table_pl \
      ~{score} \
      ~{if defined(e_slash_evalue) then ("-e/--evalue " +  '"' + e_slash_evalue + '"') else ""} \
      ~{if defined(b_slash_bit_score) then ("-b/--bitscore " +  '"' + b_slash_bit_score + '"') else ""}
  >>>
  parameter_meta {
    e_slash_evalue: "-- filter by evalue"
    b_slash_bit_score: "-- filter by bitscore --header -- boolean flag to"
    score: "e-value"
  }
  output {
    File out_stdout = stdout()
  }
}