version 1.0

task Pepxml2csv.py {
  input {
    String? inInFile
  }
  command <<<
    pepxml2csv.py \
      ~{inInFile}
  >>>
}