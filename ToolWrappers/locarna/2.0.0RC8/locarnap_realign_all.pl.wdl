version 1.0

task Locarnaprealignallpl {
  input {
    Boolean? man
    Boolean? test
    Boolean? rev_compl
    Boolean? run_locally
    String? threads
  }
  command <<<
    locarnap_realign_all_pl \
      ~{if (man) then "--man" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (rev_compl) then "--revcompl" else ""} \
      ~{if (run_locally) then "--run-locally" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "Full documentation"
    test: "Test only. Jobs are not run or submitted to SGE!"
    rev_compl: "Realign reverse complement"
    run_locally: "Run the realignment on the local machine (without the use of SGE)."
    threads: "Use <k> threads for multicore support."
  }
  output {
    File out_stdout = stdout()
  }
}