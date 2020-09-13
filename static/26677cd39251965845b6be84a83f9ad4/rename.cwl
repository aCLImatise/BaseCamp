class: CommandLineTool
id: ../../../rename.cwl
inputs:
- id: in_man
  doc: (read the full manual)
  type: boolean
  inputBinding:
    prefix: --man
- id: in_zero_slash_null
  doc: (when reading from STDIN)
  type: boolean
  inputBinding:
    prefix: -0/--null
- id: in_i_slash_interactive
  doc: (proceed or prompt when overwriting)
  type: string
  inputBinding:
    prefix: -i/--interactive
- id: in_g_slash_glob
  doc: (expand "*" etc. in filenames, useful in Windows\x{2122} CMD.EXE)
  type: boolean
  inputBinding:
    prefix: -g/--glob
- id: in_k_slash_backwards_slash_reverse_order
  doc: ''
  type: boolean
  inputBinding:
    prefix: -k/--backwards/--reverse-order
- id: in_lslash_hardlink
  doc: ''
  type: string
  inputBinding:
    prefix: -L/--hardlink
- id: in_m_slash_use
  doc: ''
  type: string
  inputBinding:
    prefix: -M/--use
- id: in_n_slash_just_print_slash_dry_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: -n/--just-print/--dry-run
- id: in_n_slash_counter_format
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N/--counter-format
- id: in_p_slash_mk_path_slash_make_dirs
  doc: ''
  type: boolean
  inputBinding:
    prefix: -p/--mkpath/--make-dirs
- id: in_stdin_slash_no_stdin
  doc: ''
  type: boolean
  inputBinding:
    prefix: --stdin/--no-stdin
- id: in_t_slash_sort_time
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t/--sort-time
- id: in_t_slash_transcode
  doc: ''
  type: string
  inputBinding:
    prefix: -T/--transcode
- id: in_v_slash_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_a_slash_append
  doc: ''
  type: string
  inputBinding:
    prefix: -a/--append
- id: in_a_slash_prepend
  doc: ''
  type: string
  inputBinding:
    prefix: -A/--prepend
- id: in_c_slash_lower_case
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c/--lower-case
- id: in_c_slash_upper_case
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C/--upper-case
- id: in_d_slash_delete
  doc: ''
  type: string
  inputBinding:
    prefix: -d/--delete
- id: in_d_slash_delete_all
  doc: ''
  type: string
  inputBinding:
    prefix: -D/--delete-all
- id: in_e_slash_expr
  doc: ''
  type: string
  inputBinding:
    prefix: -e/--expr
- id: in_p_slash_pipe
  doc: ''
  type: string
  inputBinding:
    prefix: -P/--pipe
- id: in_s_slash_subst
  doc: to
  type: string
  inputBinding:
    prefix: -s/--subst
- id: in_s_slash_subst_all
  doc: to
  type: string
  inputBinding:
    prefix: -S/--subst-all
- id: in_x_slash_remove_extension
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x/--remove-extension
- id: in_x_slash_keep_extension
  doc: ''
  type: boolean
  inputBinding:
    prefix: -X/--keep-extension
- id: in_z_slash_sanitize
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z/--sanitize
- id: in_camelcase
  doc: (see manual)
  type: boolean
  inputBinding:
    prefix: --camelcase
- id: in_switches
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_transforms
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_switches_vertical_line_transforms
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rename
