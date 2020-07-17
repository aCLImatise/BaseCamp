version 1.0

task SimulateErrors.pyOutputFasta {
  input {
    String? e
    String? w
    String simulate_errors_do_tpy
  }
  command <<<
    simulate_errors.py output_fasta \
      ~{simulate_errors_do_tpy} \
      ~{if defined(e) then ("-e " +  '"' + e + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  parameter_meta {
    e: ""
    w: ""
    simulate_errors_do_tpy: ""
  }
}