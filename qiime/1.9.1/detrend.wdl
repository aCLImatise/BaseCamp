version 1.0

task Detrend.py {
  input {
    String inputInputFp
  }
  command <<<
    detrend.py \
      ~{if defined(inputInputFp) then ("--input_fp " +  '"' + inputInputFp + '"') else ""}
  >>>
}