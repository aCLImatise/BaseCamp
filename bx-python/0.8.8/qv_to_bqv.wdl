version 1.0

task QvToBqv.py {
  input {
    String? qualQualFile
    String? outputOutputFile
  }
  command <<<
    qv_to_bqv.py \
      ~{qualQualFile} \
      ~{outputOutputFile}
  >>>
}