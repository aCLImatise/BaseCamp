class: CommandLineTool
id: rename.cwl
inputs:
- id: in_man
  doc: "(read the full manual)\n-0/--null (when reading from STDIN)\n-f/--force or\
    \ -i/--interactive (proceed or prompt when overwriting)\n-g/--glob (expand \"\
    *\" etc. in filenames, useful in Windows\\x{2122} CMD.EXE)\n-k/--backwards/--reverse-order\n\
    -l/--symlink or -L/--hardlink\n-M/--use=Module\n-n/--just-print/--dry-run\n-N/--counter-format\n\
    -p/--mkpath/--make-dirs\n--stdin/--no-stdin\n-t/--sort-time\n-T/--transcode=encoding\n\
    -v/--verbose\nTransforms, applied sequentially:\n-a/--append=str\n-A/--prepend=str\n\
    -c/--lower-case\n-C/--upper-case\n-d/--delete=str\n-D/--delete-all=str\n-e/--expr=code\n\
    -P/--pipe=cmd\n-s/--subst from to\n-S/--subst-all from to\n-x/--remove-extension\n\
    -X/--keep-extension\n-z/--sanitize\n--camelcase --urlesc --nows --rews --noctrl\
    \ --nometa --trim (see manual)\n"
  type: boolean
  inputBinding:
    prefix: --man
- id: in_trim
  doc: ''
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_no_meta
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nometa
- id: in_no_ctrl
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noctrl
- id: in_re_ws
  doc: ''
  type: boolean
  inputBinding:
    prefix: --rews
- id: in_now_s
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nows
- id: in_url_esc
  doc: ''
  type: boolean
  inputBinding:
    prefix: --urlesc
- id: in_camelcase
  doc: ''
  type: boolean
  inputBinding:
    prefix: --camelcase
- id: in_s_slash_subst_all
  doc: ''
  type: string
  inputBinding:
    prefix: -S/--subst-all
- id: in_s_slash_subst
  doc: ''
  type: string
  inputBinding:
    prefix: -s/--subst
- id: in_lslash_symlink
  doc: ''
  type: string
  inputBinding:
    prefix: -l/--symlink
- id: in_g_slash_glob
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g/--glob
- id: in_i_slash_interactive
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i/--interactive
- id: in_f_slash_force
  doc: ''
  type: string
  inputBinding:
    prefix: -f/--force
- id: in_zero_slash_null
  doc: ''
  type: boolean
  inputBinding:
    prefix: -0/--null
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
