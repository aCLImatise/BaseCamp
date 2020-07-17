version 1.0

task ParseMatchAnnot.py {
  input {
    Boolean? not_p_bid
    Boolean? parse_fl_coverage
    String parse
    String match_an_not
    String result
  }
  command <<<
    parse_matchAnnot.py \
      ~{parse} \
      ~{match_an_not} \
      ~{result} \
      ~{true="--not_pbid" false="" not_p_bid} \
      ~{true="--parse_FL_coverage" false="" parse_fl_coverage}
  >>>
  parameter_meta {
    not_p_bid: ""
    parse_fl_coverage: ""
    parse: ""
    match_an_not: ""
    result: ""
  }
}