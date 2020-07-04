version 1.0

task FastqToFa {
  input {
    String? verbose
    String in_dot_fast_q
    String out_dot_fa
  }
  command <<<
    fastqToFa \
      ~{in_dot_fast_q} \
      ~{out_dot_fa} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    verbose: "- set warning level to get some stats output during processing"
    in_dot_fast_q: ""
    out_dot_fa: ""
  }
}