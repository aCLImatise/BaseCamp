version 1.0

task RemoveTailpyLength {
  input {
    Boolean? d
    Boolean? v
    String? o
    String remove_tail_do_tpy
    String in_file
    Int length
  }
  command <<<
    remove_tail_py length \
      ~{remove_tail_do_tpy} \
      ~{in_file} \
      ~{length} \
      ~{if (d) then "-d" else ""} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    d: ""
    v: ""
    o: ""
    remove_tail_do_tpy: ""
    in_file: ""
    length: ""
  }
  output {
    File out_stdout = stdout()
  }
}