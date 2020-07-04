version 1.0

task PhiSpy.pyInfile {
  input {
    String? m
    String? t
    Boolean? l
    String phi_spy_do_tpy
  }
  command <<<
    PhiSpy.py infile \
      ~{phi_spy_do_tpy} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{true="-l" false="" l}
  >>>
  parameter_meta {
    m: ""
    t: ""
    l: ""
    phi_spy_do_tpy: ""
  }
}