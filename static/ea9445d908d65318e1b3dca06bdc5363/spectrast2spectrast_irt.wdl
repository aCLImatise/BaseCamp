version 1.0

task Spectrast2spectrastIrt.py {
  input {
    String? i
    String? o
    String? sp_lib_slash_sp_txt
  }
  command <<<
    spectrast2spectrast_irt.py \
      ~{sp_lib_slash_sp_txt} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    sp_lib_slash_sp_txt: ""
  }
}