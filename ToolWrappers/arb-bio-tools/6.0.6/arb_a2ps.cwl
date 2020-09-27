class: CommandLineTool
id: arb_a2ps.cwl
inputs:
- id: in_one_page_sheet
  doc: one page per sheet
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_twin_pages_sheet
  doc: TWIN PAGES per sheet
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_nd_print_dont
  doc: -nd     print (DON'T PRINT) current date at the bottom
  type: boolean
  inputBinding:
    prefix: -d
- id: in_fnum
  doc: font size, num is a float number
  type: boolean
  inputBinding:
    prefix: -Fnum
- id: in_h_str
  doc: use str like header title for subsequent files
  type: boolean
  inputBinding:
    prefix: -Hstr
- id: in_print_landscape_mode
  doc: print in LANDSCAPE mode
  type: boolean
  inputBinding:
    prefix: -l
- id: in_lnum
  doc: use num lines per page
  type: boolean
  inputBinding:
    prefix: -lnum
- id: in_process_file_man
  doc: process the file as a man
  type: boolean
  inputBinding:
    prefix: -m
- id: in_nn_number_number
  doc: -nn     NUMBER (don't number) line files
  type: boolean
  inputBinding:
    prefix: -n
- id: in_print_portrait_mode
  doc: print in portrait mode
  type: boolean
  inputBinding:
    prefix: -p
- id: in_print_quiet_summary
  doc: print in quiet mode (no summary)
  type: boolean
  inputBinding:
    prefix: -q
- id: in_ns_print_print
  doc: -ns     PRINT (don't print) surrounding borders
  type: boolean
  inputBinding:
    prefix: -s
- id: in_nb_print_dont
  doc: -nB     print (DON'T PRINT) in bold font
  type: boolean
  inputBinding:
    prefix: -B
- id: in_nb_force_dont
  doc: -nb     force (DON'T FORCE) binary printing
  type: boolean
  inputBinding:
    prefix: -b
- id: in_nc_allow_allow
  doc: -nc     allow (DON'T ALLOW) two files on the same sheet
  type: boolean
  inputBinding:
    prefix: -c
- id: in_fold_fold_lines
  doc: -nf     FOLD (don't fold) lines
  type: boolean
  inputBinding:
    prefix: -f
- id: in_nh
  doc: don't print any header
  type: boolean
  inputBinding:
    prefix: -nH
- id: in_i_file
  doc: include this file as a2ps prologue
  type: boolean
  inputBinding:
    prefix: -Ifile
- id: in_ni_interpret_interpret
  doc: -ni     INTERPRET (don't interpret) tab, bs and ff chars
  type: boolean
  inputBinding:
    prefix: -i
- id: in_p_printer
  doc: "(don't send) directly to the printer\n(with options '-l' and -Pprinter)"
  type: string
  inputBinding:
    prefix: -Pprinter
- id: in_nr_restart_restart
  doc: -nr     RESTART (don't restart) page number after each file
  type: boolean
  inputBinding:
    prefix: -r
- id: in_t_num
  doc: set tab size to n
  type: boolean
  inputBinding:
    prefix: -tnum
- id: in_nu
  doc: don't print a filename footer
  type: boolean
  inputBinding:
    prefix: -nu
- id: in_nv_visible_display
  doc: -nv     VISIBLE (blank) display of unprintable chars
  type: boolean
  inputBinding:
    prefix: -v
- id: in_n_display_dont
  doc: -n8     display (DON'T DISPLAY) 8-bit chars
  type: boolean
  inputBinding:
    prefix: '-8'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- arb_a2ps
