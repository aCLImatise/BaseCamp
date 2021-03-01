version 1.0

task FindAllSnpspy {
  input {
    String? o
    String? a
  }
  command <<<
    find_all_snps_py \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    a: ""
  }
  output {
    File out_stdout = stdout()
  }
}