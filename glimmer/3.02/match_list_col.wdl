version 1.0

task MatchListCol.awkCol {
  input {
    String match_list_cold_ot_awk
    String list_file
    String col
  }
  command <<<
    match-list-col.awk col \
      ~{match_list_cold_ot_awk} \
      ~{list_file} \
      ~{col}
  >>>
  parameter_meta {
    match_list_cold_ot_awk: ""
    list_file: ""
    col: ""
  }
}