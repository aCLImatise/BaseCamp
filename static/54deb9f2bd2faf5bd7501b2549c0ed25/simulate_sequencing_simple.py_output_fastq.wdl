version 1.0

task SimulateSequencingSimplepyOutputFastq {
  input {
    Int? m
    String? n
    String simulate_sequencing_simple_do_tpy
  }
  command <<<
    simulate_sequencing_simple_py output_fastq \
      ~{simulate_sequencing_simple_do_tpy} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    n: ""
    simulate_sequencing_simple_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}