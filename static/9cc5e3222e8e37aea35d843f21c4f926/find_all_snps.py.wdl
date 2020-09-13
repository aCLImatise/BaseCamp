version 1.0

task FindAllSnpspy {
  input {
    String? a
    String? o
  }
  command <<<
    find_all_snps_py \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    a: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}