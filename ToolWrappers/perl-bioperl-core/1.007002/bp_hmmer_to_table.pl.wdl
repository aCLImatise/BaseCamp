version 1.0

task BpHmmerToTablepl {
  input {
    String? evalue
    Boolean? bit_score
    String score
  }
  command <<<
    bp_hmmer_to_table_pl \
      ~{score} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(bit_score) then ("--bitscore " +  '"' + bit_score + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    evalue: "-- filter by evalue"
    bit_score: "-- filter by bitscore --header -- boolean flag to"
    score: "e-value"
  }
  output {
    File out_stdout = stdout()
  }
}