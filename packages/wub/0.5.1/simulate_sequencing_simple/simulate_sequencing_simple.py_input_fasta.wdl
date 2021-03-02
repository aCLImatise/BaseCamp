version 1.0

task SimulateSequencingSimplepyInputFasta {
  input {
    Int? m
    String? n
    String simulate_sequencing_simple_do_tpy
  }
  command <<<
    simulate_sequencing_simple_py input_fasta \
      ~{simulate_sequencing_simple_do_tpy} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    m: ""
    n: ""
    simulate_sequencing_simple_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}