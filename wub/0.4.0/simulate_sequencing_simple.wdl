version 1.0

task SimulateSequencingSimple.pyOutputFastq {
  input {
    String? n
    String? m
    String simulate_sequencing_simple_do_tpy
  }
  command <<<
    simulate_sequencing_simple.py output_fastq \
      ~{simulate_sequencing_simple_do_tpy} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    m: ""
    simulate_sequencing_simple_do_tpy: ""
  }
}