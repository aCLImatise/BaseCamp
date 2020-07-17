version 1.0

task Hisat2SimulateReads.pyBaseFname {
  input {
    Boolean? d
    Boolean? single_end
    String? r
    String his_at_two_simulate_reads_do_tpy
  }
  command <<<
    hisat2_simulate_reads.py base_fname \
      ~{his_at_two_simulate_reads_do_tpy} \
      ~{true="-d" false="" d} \
      ~{true="--single-end" false="" single_end} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    single_end: ""
    r: ""
    his_at_two_simulate_reads_do_tpy: ""
  }
}