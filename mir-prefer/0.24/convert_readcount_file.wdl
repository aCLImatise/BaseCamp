version 1.0

task ConvertReadcountFile.py {
  input {
    String rcn
  }
  command <<<
    convert-readcount-file.py \
      ~{rcn}
  >>>
  parameter_meta {
    rcn: ""
  }
}