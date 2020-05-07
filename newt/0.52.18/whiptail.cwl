class: CommandLineTool
id: whiptail.cwl
inputs:
- id: msgbox
  doc: <height> <width>
  type: string
  inputBinding:
    prefix: --msgbox
- id: yes_no
  doc: <text> <height> <width>
  type: boolean
  inputBinding:
    prefix: --yesno
- id: infobox
  doc: <height> <width>
  type: string
  inputBinding:
    prefix: --infobox
- id: input_box
  doc: '<height> <width> [init] '
  type: string
  inputBinding:
    prefix: --inputbox
- id: password_box
  doc: '<height> <width> [init] '
  type: string
  inputBinding:
    prefix: --passwordbox
- id: text_box
  doc: <height> <width>
  type: File
  inputBinding:
    prefix: --textbox
- id: menu
  doc: <height> <width> <listheight> [tag item] ...
  type: string
  inputBinding:
    prefix: --menu
- id: checklist
  doc: <height> <width> <listheight> [tag item status]...
  type: string
  inputBinding:
    prefix: --checklist
- id: radio_list
  doc: <height> <width> <listheight> [tag item status]...
  type: string
  inputBinding:
    prefix: --radiolist
- id: gauge
  doc: <height> <width> <percent>
  type: string
  inputBinding:
    prefix: --gauge
- id: clear
  doc: clear screen on exit
  type: boolean
  inputBinding:
    prefix: --clear
- id: default_no
  doc: default no button
  type: boolean
  inputBinding:
    prefix: --defaultno
- id: default_item
  doc: set default string
  type: string
  inputBinding:
    prefix: --default-item
- id: full_buttons
  doc: use full buttons
  type: boolean
  inputBinding:
    prefix: --fullbuttons
- id: no_cancel
  doc: no cancel button
  type: boolean
  inputBinding:
    prefix: --nocancel
- id: yes_button
  doc: set text of yes button
  type: string
  inputBinding:
    prefix: --yes-button
- id: no_button
  doc: set text of no button
  type: string
  inputBinding:
    prefix: --no-button
- id: ok_button
  doc: set text of ok button
  type: string
  inputBinding:
    prefix: --ok-button
- id: cancel_button
  doc: set text of cancel button
  type: string
  inputBinding:
    prefix: --cancel-button
- id: no_item
  doc: don't display items
  type: boolean
  inputBinding:
    prefix: --noitem
- id: no_tags
  doc: don't display tags
  type: boolean
  inputBinding:
    prefix: --notags
- id: separate_output
  doc: output one line at a time
  type: boolean
  inputBinding:
    prefix: --separate-output
- id: output_fd
  doc: output to fd, not stdout
  type: string
  inputBinding:
    prefix: --output-fd
- id: title
  doc: display title
  type: string
  inputBinding:
    prefix: --title
- id: back_title
  doc: display backtitle
  type: string
  inputBinding:
    prefix: --backtitle
- id: scroll_text
  doc: force vertical scrollbars
  type: boolean
  inputBinding:
    prefix: --scrolltext
- id: top_left
  doc: put window in top-left corner
  type: boolean
  inputBinding:
    prefix: --topleft
outputs: []
cwlVersion: v1.1
baseCommand:
- whiptail
