version 1.0

task Hisat2SimulateReadspyBaseFname {
  input {
    String? r
    Boolean? single_end
    Boolean? d
    Int his_at_two_simulate_reads_do_tpy
  }
  command <<<
    hisat2_simulate_reads_py base_fname \
      ~{his_at_two_simulate_reads_do_tpy} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    r: ""
    single_end: ""
    d: ""
    his_at_two_simulate_reads_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}