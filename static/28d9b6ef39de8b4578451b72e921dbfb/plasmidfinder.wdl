version 1.0

task Plasmidfinder.py {
  input {
    Array[String] i
    String? o
    String? tmp
  }
  command <<<
    plasmidfinder.py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(tmp) then ("-tmp " +  '"' + tmp + '"') else ""}
  >>>
  parameter_meta {
    i: ""
    o: ""
    tmp: ""
  }
}