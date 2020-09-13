version 1.0

task Comppair {
  input {
    Boolean? suppress_comparison_totals
    Boolean? suppress_pair_alignment
    Int? turn_mathews_definition
    Boolean? options
  }
  command <<<
    comppair \
      ~{if (suppress_comparison_totals) then "-S" else ""} \
      ~{if (suppress_pair_alignment) then "-q" else ""} \
      ~{if defined(turn_mathews_definition) then ("-M " +  '"' + turn_mathews_definition + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    suppress_comparison_totals: ": suppress comparison totals"
    suppress_pair_alignment: ": suppress every pair alignment prediction output"
    turn_mathews_definition: ": turn on Mathews definition of paired"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}