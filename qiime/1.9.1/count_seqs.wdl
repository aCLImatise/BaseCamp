version 1.0

task CountSeqs.py {
  input {
    String inputInputFps
  }
  command <<<
    count_seqs.py \
      ~{if defined(inputInputFps) then ("--input_fps " +  '"' + inputInputFps + '"') else ""}
  >>>
}