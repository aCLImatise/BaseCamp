version 1.0

task ConvertAlphabet.pyOutputFastx {
  input {
    String? i
    String? o
    Boolean? d
    Boolean? r
    String convert_alphabet_do_tpy
  }
  command <<<
    convert_alphabet.py output_fastx \
      ~{convert_alphabet_do_tpy} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{true="-D" false="" d} \
      ~{true="-R" false="" r}
  >>>
  parameter_meta {
    i: ""
    o: ""
    d: ""
    r: ""
    convert_alphabet_do_tpy: ""
  }
}