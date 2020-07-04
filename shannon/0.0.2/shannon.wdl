version 1.0

task Shannon.py {
  input {
    String? o
  }
  command <<<
    shannon.py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    o: ""
  }
}