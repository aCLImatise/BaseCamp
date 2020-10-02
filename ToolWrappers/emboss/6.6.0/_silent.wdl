version 1.0

task Silent {
  input {
    Boolean? enzymes
    Boolean? s_show
    Boolean? t_show
    Boolean? all_mut
  }
  command <<<
    _silent \
      ~{if (enzymes) then "-enzymes" else ""} \
      ~{if (s_show) then "-sshow" else ""} \
      ~{if (t_show) then "-tshow" else ""} \
      ~{if (all_mut) then "-allmut" else ""}
  >>>
  parameter_meta {
    enzymes: "string     [all] Comma separated enzyme list (Any\\nstring)"
    s_show: "boolean    [N] Display untranslated sequence"
    t_show: "boolean    [N] Display translated sequence"
    all_mut: "boolean    [N] Display all mutations"
  }
  output {
    File out_stdout = stdout()
  }
}