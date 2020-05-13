version 1.0

task Flair.py {
  input {
    String? pythonPython
    String? flairFlairPy
    String? modeMode
  }
  command <<<
    flair.py \
      ~{pythonPython} \
      ~{flairFlairPy} \
      ~{modeMode}
  >>>
}