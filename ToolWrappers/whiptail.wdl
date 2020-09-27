version 1.0

task Whiptail {
  input {
    String? msgbox
    Boolean? yes_no
    String? infobox
    String? input_box
    String? password_box
    File? text_box
    String? menu
    String? checklist
    String? radio_list
    String? gauge
    Boolean? clear
    Boolean? default_no
    String? default_item
    Boolean? full_buttons
    Boolean? no_cancel
    String? yes_button
    String? no_button
    String? ok_button
    String? cancel_button
    Boolean? no_item
    Boolean? no_tags
    Boolean? separate_output
    String? output_fd
    String? title
    String? back_title
    Boolean? scroll_text
    Boolean? top_left
  }
  command <<<
    whiptail \
      ~{if defined(msgbox) then ("--msgbox " +  '"' + msgbox + '"') else ""} \
      ~{if (yes_no) then "--yesno" else ""} \
      ~{if defined(infobox) then ("--infobox " +  '"' + infobox + '"') else ""} \
      ~{if defined(input_box) then ("--inputbox " +  '"' + input_box + '"') else ""} \
      ~{if defined(password_box) then ("--passwordbox " +  '"' + password_box + '"') else ""} \
      ~{if defined(text_box) then ("--textbox " +  '"' + text_box + '"') else ""} \
      ~{if defined(menu) then ("--menu " +  '"' + menu + '"') else ""} \
      ~{if defined(checklist) then ("--checklist " +  '"' + checklist + '"') else ""} \
      ~{if defined(radio_list) then ("--radiolist " +  '"' + radio_list + '"') else ""} \
      ~{if defined(gauge) then ("--gauge " +  '"' + gauge + '"') else ""} \
      ~{if (clear) then "--clear" else ""} \
      ~{if (default_no) then "--defaultno" else ""} \
      ~{if defined(default_item) then ("--default-item " +  '"' + default_item + '"') else ""} \
      ~{if (full_buttons) then "--fullbuttons" else ""} \
      ~{if (no_cancel) then "--nocancel" else ""} \
      ~{if defined(yes_button) then ("--yes-button " +  '"' + yes_button + '"') else ""} \
      ~{if defined(no_button) then ("--no-button " +  '"' + no_button + '"') else ""} \
      ~{if defined(ok_button) then ("--ok-button " +  '"' + ok_button + '"') else ""} \
      ~{if defined(cancel_button) then ("--cancel-button " +  '"' + cancel_button + '"') else ""} \
      ~{if (no_item) then "--noitem" else ""} \
      ~{if (no_tags) then "--notags" else ""} \
      ~{if (separate_output) then "--separate-output" else ""} \
      ~{if defined(output_fd) then ("--output-fd " +  '"' + output_fd + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(back_title) then ("--backtitle " +  '"' + back_title + '"') else ""} \
      ~{if (scroll_text) then "--scrolltext" else ""} \
      ~{if (top_left) then "--topleft" else ""}
  >>>
  parameter_meta {
    msgbox: "<height> <width>"
    yes_no: "<text> <height> <width>"
    infobox: "<height> <width>"
    input_box: "<height> <width> [init]"
    password_box: "<height> <width> [init]"
    text_box: "<height> <width>"
    menu: "<height> <width> <listheight> [tag item] ..."
    checklist: "<height> <width> <listheight> [tag item status]..."
    radio_list: "<height> <width> <listheight> [tag item status]..."
    gauge: "<height> <width> <percent>"
    clear: "clear screen on exit"
    default_no: "default no button"
    default_item: "set default string"
    full_buttons: "use full buttons"
    no_cancel: "no cancel button"
    yes_button: "set text of yes button"
    no_button: "set text of no button"
    ok_button: "set text of ok button"
    cancel_button: "set text of cancel button"
    no_item: "don't display items"
    no_tags: "don't display tags"
    separate_output: "output one line at a time"
    output_fd: "output to fd, not stdout"
    title: "display title"
    back_title: "display backtitle"
    scroll_text: "force vertical scrollbars"
    top_left: "put window in top-left corner"
  }
  output {
    File out_stdout = stdout()
  }
}