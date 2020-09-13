version 1.0

task ParseMatchAnnotpy {
  input {
    Boolean? parse_fl_coverage
    Boolean? not_p_bid
    String parse
    String match_an_not
    String result
  }
  command <<<
    parse_matchAnnot_py \
      ~{parse} \
      ~{match_an_not} \
      ~{result} \
      ~{if (parse_fl_coverage) then "--parse_FL_coverage" else ""} \
      ~{if (not_p_bid) then "--not_pbid" else ""}
  >>>
  parameter_meta {
    parse_fl_coverage: ""
    not_p_bid: ""
    parse: ""
    match_an_not: ""
    result: ""
  }
  output {
    File out_stdout = stdout()
  }
}