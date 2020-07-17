version 1.0

task AddErrors.pyOutputFasta {
  input {
    String? n
    String? t
    String add_errors_do_tpy
  }
  command <<<
    add_errors.py output_fasta \
      ~{add_errors_do_tpy} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    t: ""
    add_errors_do_tpy: ""
  }
}