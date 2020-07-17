version 1.0

task DumpFile.py {
  input {
    String? input_file
  }
  command <<<
    dump_file.py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: ""
  }
}