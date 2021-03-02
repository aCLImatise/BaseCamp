version 1.0

task SeqtkCutN {
  input {
    Int? min_size_tract
    Int? penalty_for_nonn
    Boolean? print_gaps_only
    String in_dot_fa
  }
  command <<<
    seqtk cutN \
      ~{in_dot_fa} \
      ~{if defined(min_size_tract) then ("-n " +  '"' + min_size_tract + '"') else ""} \
      ~{if defined(penalty_for_nonn) then ("-p " +  '"' + penalty_for_nonn + '"') else ""} \
      ~{if (print_gaps_only) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_size_tract: "min size of N tract [1000]"
    penalty_for_nonn: "penalty for a non-N [10]"
    print_gaps_only: "print gaps only, no sequence"
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}