version 1.0

task Pepxml2csv.py {
  input {
    String in_file
  }
  command <<<
    pepxml2csv.py \
      ~{in_file}
  >>>
  parameter_meta {
    in_file: "= sys.argv[1]"
  }
}