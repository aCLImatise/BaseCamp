version 1.0

task Rename {
  input {
    Boolean? man
    Boolean? trim
    Boolean? no_meta
    Boolean? no_ctrl
    Boolean? re_ws
    Boolean? now_s
    Boolean? url_esc
    Boolean? camelcase
    String? s_slash_subst_all
    String? s_slash_subst
    String? lslash_symlink
    Boolean? g_slash_glob
    Boolean? i_slash_interactive
    String? f_slash_force
    Boolean? zero_slash_null
    String switches
    String transforms
    String? switches_vertical_line_transforms
  }
  command <<<
    rename \
      ~{switches} \
      ~{transforms} \
      ~{switches_vertical_line_transforms} \
      ~{if (man) then "--man" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (no_meta) then "--nometa" else ""} \
      ~{if (no_ctrl) then "--noctrl" else ""} \
      ~{if (re_ws) then "--rews" else ""} \
      ~{if (now_s) then "--nows" else ""} \
      ~{if (url_esc) then "--urlesc" else ""} \
      ~{if (camelcase) then "--camelcase" else ""} \
      ~{if defined(s_slash_subst_all) then ("-S/--subst-all " +  '"' + s_slash_subst_all + '"') else ""} \
      ~{if defined(s_slash_subst) then ("-s/--subst " +  '"' + s_slash_subst + '"') else ""} \
      ~{if defined(lslash_symlink) then ("-l/--symlink " +  '"' + lslash_symlink + '"') else ""} \
      ~{if (g_slash_glob) then "-g/--glob" else ""} \
      ~{if (i_slash_interactive) then "-i/--interactive" else ""} \
      ~{if defined(f_slash_force) then ("-f/--force " +  '"' + f_slash_force + '"') else ""} \
      ~{if (zero_slash_null) then "-0/--null" else ""}
  >>>
  parameter_meta {
    man: "(read the full manual)\\n-0/--null (when reading from STDIN)\\n-f/--force or -i/--interactive (proceed or prompt when overwriting)\\n-g/--glob (expand \\\"*\\\" etc. in filenames, useful in Windows\\x{2122} CMD.EXE)\\n-k/--backwards/--reverse-order\\n-l/--symlink or -L/--hardlink\\n-M/--use=Module\\n-n/--just-print/--dry-run\\n-N/--counter-format\\n-p/--mkpath/--make-dirs\\n--stdin/--no-stdin\\n-t/--sort-time\\n-T/--transcode=encoding\\n-v/--verbose\\nTransforms, applied sequentially:\\n-a/--append=str\\n-A/--prepend=str\\n-c/--lower-case\\n-C/--upper-case\\n-d/--delete=str\\n-D/--delete-all=str\\n-e/--expr=code\\n-P/--pipe=cmd\\n-s/--subst from to\\n-S/--subst-all from to\\n-x/--remove-extension\\n-X/--keep-extension\\n-z/--sanitize\\n--camelcase --urlesc --nows --rews --noctrl --nometa --trim (see manual)\\n"
    trim: ""
    no_meta: ""
    no_ctrl: ""
    re_ws: ""
    now_s: ""
    url_esc: ""
    camelcase: ""
    s_slash_subst_all: ""
    s_slash_subst: ""
    lslash_symlink: ""
    g_slash_glob: ""
    i_slash_interactive: ""
    f_slash_force: ""
    zero_slash_null: ""
    switches: ""
    transforms: ""
    switches_vertical_line_transforms: ""
  }
  output {
    File out_stdout = stdout()
  }
}