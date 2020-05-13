version 1.0

task MakeQiimePyFile.py {
  input {
    String outputOutputFp
  }
  command <<<
    make_qiime_py_file.py \
      ~{if defined(outputOutputFp) then ("--output_fp " +  '"' + outputOutputFp + '"') else ""}
  >>>
}