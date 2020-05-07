version 1.0

task Whiptail {
  input {
    String msgboxMsgbox
    Boolean yesYesNo
    String infoboxInfobox
    String inputInputBox
    String passwordPasswordBox
    File textTextBox
    String menuMenu
    String checklistChecklist
    String radioRadioList
    String gaugeGauge
    Boolean clearClear
    Boolean defaultDefaultNo
    String defaultDefaultItem
    Boolean fullFullButtons
    Boolean noNoCancel
    String yesYesButton
    String noNoButton
    String okOkButton
    String cancelCancelButton
    Boolean noNoItem
    Boolean noNoTags
    Boolean separateSeparateOutput
    String outputOutputFd
    String titleTitle
    String backBackTitle
    Boolean scrollScrollText
    Boolean topTopLeft
  }
  command <<<
    whiptail \
      ~{if defined(msgboxMsgbox) then ("--msgbox " +  '"' + msgboxMsgbox + '"') else ""} \
      ~{true="--yesno" false="" yesYesNo} \
      ~{if defined(infoboxInfobox) then ("--infobox " +  '"' + infoboxInfobox + '"') else ""} \
      ~{if defined(inputInputBox) then ("--inputbox " +  '"' + inputInputBox + '"') else ""} \
      ~{if defined(passwordPasswordBox) then ("--passwordbox " +  '"' + passwordPasswordBox + '"') else ""} \
      ~{if defined(textTextBox) then ("--textbox " +  '"' + textTextBox + '"') else ""} \
      ~{if defined(menuMenu) then ("--menu " +  '"' + menuMenu + '"') else ""} \
      ~{if defined(checklistChecklist) then ("--checklist " +  '"' + checklistChecklist + '"') else ""} \
      ~{if defined(radioRadioList) then ("--radiolist " +  '"' + radioRadioList + '"') else ""} \
      ~{if defined(gaugeGauge) then ("--gauge " +  '"' + gaugeGauge + '"') else ""} \
      ~{true="--clear" false="" clearClear} \
      ~{true="--defaultno" false="" defaultDefaultNo} \
      ~{if defined(defaultDefaultItem) then ("--default-item " +  '"' + defaultDefaultItem + '"') else ""} \
      ~{true="--fullbuttons" false="" fullFullButtons} \
      ~{true="--nocancel" false="" noNoCancel} \
      ~{if defined(yesYesButton) then ("--yes-button " +  '"' + yesYesButton + '"') else ""} \
      ~{if defined(noNoButton) then ("--no-button " +  '"' + noNoButton + '"') else ""} \
      ~{if defined(okOkButton) then ("--ok-button " +  '"' + okOkButton + '"') else ""} \
      ~{if defined(cancelCancelButton) then ("--cancel-button " +  '"' + cancelCancelButton + '"') else ""} \
      ~{true="--noitem" false="" noNoItem} \
      ~{true="--notags" false="" noNoTags} \
      ~{true="--separate-output" false="" separateSeparateOutput} \
      ~{if defined(outputOutputFd) then ("--output-fd " +  '"' + outputOutputFd + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(backBackTitle) then ("--backtitle " +  '"' + backBackTitle + '"') else ""} \
      ~{true="--scrolltext" false="" scrollScrollText} \
      ~{true="--topleft" false="" topTopLeft}
  >>>
}