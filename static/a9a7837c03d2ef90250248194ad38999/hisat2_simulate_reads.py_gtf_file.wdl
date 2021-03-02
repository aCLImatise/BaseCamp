version 1.0

task Hisat2SimulateReadspyGtfFile {
  input {
    String? r
    Boolean? single_end
    Boolean? d
    Int his_at_two_simulate_reads_do_tpy
  }
  command <<<
    hisat2_simulate_reads_py gtf_file \
      ~{his_at_two_simulate_reads_do_tpy} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if (single_end) then "--single-end" else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
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