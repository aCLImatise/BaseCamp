version 1.0

task ConvertAlphabetpyOutputFastx {
  input {
    Boolean? r
    Boolean? d
    String? o
    String? i
    String convert_alphabet_do_tpy
  }
  command <<<
    convert_alphabet_py output_fastx \
      ~{convert_alphabet_do_tpy} \
      ~{if (r) then "-R" else ""} \
      ~{if (d) then "-D" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    d: ""
    o: ""
    i: ""
    convert_alphabet_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}