version 1.0

task FixAF1.py {
  input {
    String? input_file
  }
  command <<<
    fix_AF1.py \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""}
  >>>
  parameter_meta {
    input_file: ""
  }
}