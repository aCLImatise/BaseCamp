version 1.0

task CbTool {
  input {
    String cbCbTool
    String cbCbTool
    String cbCbTool
    Boolean debugDebug
    Boolean fixFixDots
    String firstFirst
    String delDel
  }
  command <<<
    cbTool \
      ~{if defined(cbCbTool) then ("- cbTool " +  '"' + cbCbTool + '"') else ""} \
      ~{if defined(cbCbTool) then ("- cbTool " +  '"' + cbCbTool + '"') else ""} \
      ~{if defined(cbCbTool) then ("- cbTool " +  '"' + cbCbTool + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--fixDots" false="" fixFixDots} \
      ~{if defined(firstFirst) then ("--first " +  '"' + firstFirst + '"') else ""} \
      ~{if defined(delDel) then ("--del " +  '"' + delDel + '"') else ""}
  >>>
}