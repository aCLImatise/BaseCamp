version 1.0

task Rename {
  input {
    Boolean? man
    Boolean? zero_slash_null
    String? i_slash_interactive
    Boolean? g_slash_glob
    Boolean? k_slash_backwards_slash_reverse_order
    String? lslash_hardlink
    String? m_slash_use
    Boolean? n_slash_just_print_slash_dry_run
    Boolean? n_slash_counter_format
    Boolean? p_slash_mk_path_slash_make_dirs
    Boolean? stdin_slash_no_stdin
    Boolean? t_slash_sort_time
    String? t_slash_transcode
    Boolean? v_slash_verbose
    String? a_slash_append
    String? a_slash_prepend
    Boolean? c_slash_lower_case
    Boolean? c_slash_upper_case
    String? d_slash_delete
    String? d_slash_delete_all
    String? e_slash_expr
    String? p_slash_pipe
    String? s_slash_subst
    String? s_slash_subst_all
    Boolean? x_slash_remove_extension
    Boolean? x_slash_keep_extension
    Boolean? z_slash_sanitize
    Boolean? camelcase
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
      ~{if (zero_slash_null) then "-0/--null" else ""} \
      ~{if defined(i_slash_interactive) then ("-i/--interactive " +  '"' + i_slash_interactive + '"') else ""} \
      ~{if (g_slash_glob) then "-g/--glob" else ""} \
      ~{if (k_slash_backwards_slash_reverse_order) then "-k/--backwards/--reverse-order" else ""} \
      ~{if defined(lslash_hardlink) then ("-L/--hardlink " +  '"' + lslash_hardlink + '"') else ""} \
      ~{if defined(m_slash_use) then ("-M/--use " +  '"' + m_slash_use + '"') else ""} \
      ~{if (n_slash_just_print_slash_dry_run) then "-n/--just-print/--dry-run" else ""} \
      ~{if (n_slash_counter_format) then "-N/--counter-format" else ""} \
      ~{if (p_slash_mk_path_slash_make_dirs) then "-p/--mkpath/--make-dirs" else ""} \
      ~{if (stdin_slash_no_stdin) then "--stdin/--no-stdin" else ""} \
      ~{if (t_slash_sort_time) then "-t/--sort-time" else ""} \
      ~{if defined(t_slash_transcode) then ("-T/--transcode " +  '"' + t_slash_transcode + '"') else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if defined(a_slash_append) then ("-a/--append " +  '"' + a_slash_append + '"') else ""} \
      ~{if defined(a_slash_prepend) then ("-A/--prepend " +  '"' + a_slash_prepend + '"') else ""} \
      ~{if (c_slash_lower_case) then "-c/--lower-case" else ""} \
      ~{if (c_slash_upper_case) then "-C/--upper-case" else ""} \
      ~{if defined(d_slash_delete) then ("-d/--delete " +  '"' + d_slash_delete + '"') else ""} \
      ~{if defined(d_slash_delete_all) then ("-D/--delete-all " +  '"' + d_slash_delete_all + '"') else ""} \
      ~{if defined(e_slash_expr) then ("-e/--expr " +  '"' + e_slash_expr + '"') else ""} \
      ~{if defined(p_slash_pipe) then ("-P/--pipe " +  '"' + p_slash_pipe + '"') else ""} \
      ~{if defined(s_slash_subst) then ("-s/--subst " +  '"' + s_slash_subst + '"') else ""} \
      ~{if defined(s_slash_subst_all) then ("-S/--subst-all " +  '"' + s_slash_subst_all + '"') else ""} \
      ~{if (x_slash_remove_extension) then "-x/--remove-extension" else ""} \
      ~{if (x_slash_keep_extension) then "-X/--keep-extension" else ""} \
      ~{if (z_slash_sanitize) then "-z/--sanitize" else ""} \
      ~{if (camelcase) then "--camelcase" else ""}
  >>>
  parameter_meta {
    man: "(read the full manual)"
    zero_slash_null: "(when reading from STDIN)"
    i_slash_interactive: "(proceed or prompt when overwriting)"
    g_slash_glob: "(expand \\\"*\\\" etc. in filenames, useful in Windows\\x{2122} CMD.EXE)"
    k_slash_backwards_slash_reverse_order: ""
    lslash_hardlink: ""
    m_slash_use: ""
    n_slash_just_print_slash_dry_run: ""
    n_slash_counter_format: ""
    p_slash_mk_path_slash_make_dirs: ""
    stdin_slash_no_stdin: ""
    t_slash_sort_time: ""
    t_slash_transcode: ""
    v_slash_verbose: ""
    a_slash_append: ""
    a_slash_prepend: ""
    c_slash_lower_case: ""
    c_slash_upper_case: ""
    d_slash_delete: ""
    d_slash_delete_all: ""
    e_slash_expr: ""
    p_slash_pipe: ""
    s_slash_subst: "to"
    s_slash_subst_all: "to"
    x_slash_remove_extension: ""
    x_slash_keep_extension: ""
    z_slash_sanitize: ""
    camelcase: "(see manual)"
    switches: ""
    transforms: ""
    switches_vertical_line_transforms: ""
  }
  output {
    File out_stdout = stdout()
  }
}