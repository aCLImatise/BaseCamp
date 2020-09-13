version 1.0

task Recoder {
  input {
    Boolean? enzymes
    String? r_format
    Boolean? s_show
    Boolean? t_show
  }
  command <<<
    recoder \
      ~{if (enzymes) then "-enzymes" else ""} \
      ~{if defined(r_format) then ("-rformat " +  '"' + r_format + '"') else ""} \
      ~{if (s_show) then "-sshow" else ""} \
      ~{if (t_show) then "-tshow" else ""}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any\\nstring)"
    r_format: ")"
    s_show: "boolean    [N] Display untranslated sequence"
    t_show: "boolean    [N] Display translated sequence"
  }
  output {
    File out_stdout = stdout()
  }
}