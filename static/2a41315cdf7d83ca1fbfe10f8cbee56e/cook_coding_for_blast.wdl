version 1.0

task CookCodingForBlast.py {
  input {
    String? pythonPython
    String? cookCookCodingForBlastpY
    String? fastFastAFiles
  }
  command <<<
    cook_coding_for_blast.py \
      ~{pythonPython} \
      ~{cookCookCodingForBlastpY} \
      ~{fastFastAFiles}
  >>>
}