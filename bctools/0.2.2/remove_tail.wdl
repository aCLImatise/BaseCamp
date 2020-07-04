version 1.0

task RemoveTail.pyLength {
  input {
    String? o
    Boolean? v
    Boolean? d
    String remove_tail_do_tpy
    String in_file
    Int length
  }
  command <<<
    remove_tail.py length \
      ~{remove_tail_do_tpy} \
      ~{in_file} \
      ~{length} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-v" false="" v} \
      ~{true="-d" false="" d}
  >>>
  parameter_meta {
    o: ""
    v: ""
    d: ""
    remove_tail_do_tpy: ""
    in_file: ""
    length: ""
  }
}