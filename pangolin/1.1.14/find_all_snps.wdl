version 1.0

task FindAllSnps.py {
  input {
    String? a
    String? o
  }
  command <<<
    find_all_snps.py \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    o: ""
  }
}