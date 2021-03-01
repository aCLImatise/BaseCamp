version 1.0

task SimulateErrorspyInputFasta {
  input {
    String? w
    String? e
    String simulate_errors_do_tpy
  }
  command <<<
    simulate_errors_py input_fasta \
      ~{simulate_errors_do_tpy} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""}
  >>>
  runtime {
    docker: "None"
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