class: CommandLineTool
id: arb_a2ps.cwl
inputs:
- id: in_one_page_sheet
  doc: one page per sheet
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_twin_pages_sheet
  doc: TWIN PAGES per sheet
  type: boolean?
  inputBinding:
    prefix: '-2'
- id: in_nd
  doc: print (DON'T PRINT) current date at the bottom
  type: boolean?
  inputBinding:
    prefix: -nd
- id: in_fnum
  doc: font size, num is a float number
  type: boolean?
  inputBinding:
    prefix: -Fnum
- id: in_h_str
  doc: use str like header title for subsequent files
  type: boolean?
  inputBinding:
    prefix: -Hstr
- id: in_print_landscape_mode
  doc: print in LANDSCAPE mode
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_lnum
  doc: use num lines per page
  type: boolean?
  inputBinding:
    prefix: -lnum
- id: in_process_file_man
  doc: process the file as a man
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_nn
  doc: NUMBER (don't number) line files
  type: boolean?
  inputBinding:
    prefix: -nn
- id: in_print_portrait_mode
  doc: print in portrait mode
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_print_quiet_mode
  doc: print in quiet mode (no summary)
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_ns
  doc: PRINT (don't print) surrounding borders
  type: boolean?
  inputBinding:
    prefix: -ns
- id: in_print_dont_print_bold
  doc: print (DON'T PRINT) in bold font
  type: boolean?
  inputBinding:
    prefix: -nB
- id: in_force_dont_force
  doc: force (DON'T FORCE) binary printing
  type: boolean?
  inputBinding:
    prefix: -nb
- id: in_nc
  doc: allow (DON'T ALLOW) two files on the same sheet
  type: boolean?
  inputBinding:
    prefix: -nc
- id: in_nf
  doc: FOLD (don't fold) lines
  type: boolean?
  inputBinding:
    prefix: -nf
- id: in_nh
  doc: don't print any header
  type: boolean?
  inputBinding:
    prefix: -nH
- id: in_i_file
  doc: include this file as a2ps prologue
  type: boolean?
  inputBinding:
    prefix: -Ifile
- id: in_ni
  doc: INTERPRET (don't interpret) tab, bs and ff chars
  type: boolean?
  inputBinding:
    prefix: -ni
- id: in_p_printer
  doc: "(don't send) directly to the printer\n(with options '-l' and -Pprinter)"
  type: string?
  inputBinding:
    prefix: -Pprinter
- id: in_nr
  doc: RESTART (don't restart) page number after each file
  type: boolean?
  inputBinding:
    prefix: -nr
- id: in_t_num
  doc: set tab size to n
  type: boolean?
  inputBinding:
    prefix: -tnum
- id: in_nu
  doc: don't print a filename footer
  type: boolean?
  inputBinding:
    prefix: -nu
- id: in_nv
  doc: VISIBLE (blank) display of unprintable chars
  type: boolean?
  inputBinding:
    prefix: -nv
- id: in_n_eight
  doc: display (DON'T DISPLAY) 8-bit chars
  type: boolean?
  inputBinding:
    prefix: -n8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- arb_a2ps
