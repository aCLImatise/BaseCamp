version 1.0

task MakeDatabase.py {
  input {
    String tax_file
  }
  command <<<
    make_database.py \
      ~{tax_file}
  >>>
  parameter_meta {
    tax_file: "Taxonomy file name"
  }
}