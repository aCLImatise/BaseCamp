version 1.0

task SpacedToTab {
  input {
    String sizesSizes
    String? inInTxt
    String? outOutTab
  }
  command <<<
    spacedToTab \
      ~{inInTxt} \
      ~{if defined(sizesSizes) then ("-sizes " +  '"' + sizesSizes + '"') else ""} \
      ~{outOutTab}
  >>>
}