version 1.0

task SimulateErrorspyOutputFasta {
  input {
    String? w
    String? e
    String simulate_errors_do_tpy
  }
  command <<<
    simulate_errors_py output_fasta \
      ~{simulate_errors_do_tpy} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    w: ""
    e: ""
    simulate_errors_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}