version 1.0

task NwOrder {
  input {
    Int? specify_order_criterion
  }
  command <<<
    nw_order \
      ~{if defined(specify_order_criterion) then ("-c " +  '"' + specify_order_criterion + '"') else ""}
  >>>
  parameter_meta {
    specify_order_criterion: ": specify order criterion. Possible criteria are 'a'\\n(alphanumeric oder of labels), 'n' (number of descendants:\\nnodes with fewer descendans appear first), 'd' (de-ladderize:\\nalternately put nodes with fewer descendants before or after\\nthose with more)\\nThe default (i.e., if option -c is not given) is 'a'."
  }
  output {
    File out_stdout = stdout()
  }
}