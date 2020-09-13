version 1.0

task MicroPITApyOutputtxt {
  input {
    String? a
    String? m
    String? n
    String micro_pita_do_tpy
  }
  command <<<
    MicroPITA_py output_txt \
      ~{micro_pita_do_tpy} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    m: ""
    n: ""
    micro_pita_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}