version 1.0

task PhiSpypyInfile {
  input {
    String? m
    String? o
    String phi_spy_do_tpy
  }
  command <<<
    PhiSpy_py infile \
      ~{phi_spy_do_tpy} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    o: ""
    phi_spy_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}