class: CommandLineTool
id: whiptail.cwl
inputs:
- id: in_msgbox
  doc: <height> <width>
  type: string
  inputBinding:
    prefix: --msgbox
- id: in_yes_no
  doc: <text> <height> <width>
  type: boolean
  inputBinding:
    prefix: --yesno
- id: in_infobox
  doc: <height> <width>
  type: string
  inputBinding:
    prefix: --infobox
- id: in_input_box
  doc: <height> <width> [init]
  type: string
  inputBinding:
    prefix: --inputbox
- id: in_password_box
  doc: <height> <width> [init]
  type: string
  inputBinding:
    prefix: --passwordbox
- id: in_text_box
  doc: <height> <width>
  type: File
  inputBinding:
    prefix: --textbox
- id: in_menu
  doc: <height> <width> <listheight> [tag item] ...
  type: string
  inputBinding:
    prefix: --menu
- id: in_checklist
  doc: <height> <width> <listheight> [tag item status]...
  type: string
  inputBinding:
    prefix: --checklist
- id: in_radio_list
  doc: <height> <width> <listheight> [tag item status]...
  type: string
  inputBinding:
    prefix: --radiolist
- id: in_gauge
  doc: <height> <width> <percent>
  type: string
  inputBinding:
    prefix: --gauge
- id: in_clear
  doc: clear screen on exit
  type: boolean
  inputBinding:
    prefix: --clear
- id: in_default_no
  doc: default no button
  type: boolean
  inputBinding:
    prefix: --defaultno
- id: in_default_item
  doc: set default string
  type: string
  inputBinding:
    prefix: --default-item
- id: in_full_buttons
  doc: use full buttons
  type: boolean
  inputBinding:
    prefix: --fullbuttons
- id: in_no_cancel
  doc: no cancel button
  type: boolean
  inputBinding:
    prefix: --nocancel
- id: in_yes_button
  doc: set text of yes button
  type: string
  inputBinding:
    prefix: --yes-button
- id: in_no_button
  doc: set text of no button
  type: string
  inputBinding:
    prefix: --no-button
- id: in_ok_button
  doc: set text of ok button
  type: string
  inputBinding:
    prefix: --ok-button
- id: in_cancel_button
  doc: set text of cancel button
  type: string
  inputBinding:
    prefix: --cancel-button
- id: in_no_item
  doc: don't display items
  type: boolean
  inputBinding:
    prefix: --noitem
- id: in_no_tags
  doc: don't display tags
  type: boolean
  inputBinding:
    prefix: --notags
- id: in_separate_output
  doc: output one line at a time
  type: boolean
  inputBinding:
    prefix: --separate-output
- id: in_output_fd
  doc: output to fd, not stdout
  type: string
  inputBinding:
    prefix: --output-fd
- id: in_title
  doc: display title
  type: string
  inputBinding:
    prefix: --title
- id: in_back_title
  doc: display backtitle
  type: string
  inputBinding:
    prefix: --backtitle
- id: in_scroll_text
  doc: force vertical scrollbars
  type: boolean
  inputBinding:
    prefix: --scrolltext
- id: in_top_left
  doc: put window in top-left corner
  type: boolean
  inputBinding:
    prefix: --topleft
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- whiptail
