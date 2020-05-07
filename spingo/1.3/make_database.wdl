version 1.0

task MakeDatabase.py {
  input {
    String? taxTaxFile
  }
  command <<<
    make_database.py \
      ~{taxTaxFile}
  >>>
}