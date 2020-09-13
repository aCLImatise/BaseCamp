version 1.0

task AddErrorspyInputFasta {
  input {
    String? t
    String? n
    String add_errors_do_tpy
  }
  command <<<
    add_errors_py input_fasta \
      ~{add_errors_do_tpy} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    n: ""
    add_errors_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}