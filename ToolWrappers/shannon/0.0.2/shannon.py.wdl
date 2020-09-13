version 1.0

task Shannonpy {
  input {
    String? p
    Int? k
    Int? partition
    File? compare
    Directory? o
  }
  command <<<
    shannon_py \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(k) then ("-K " +  '"' + k + '"') else ""} \
      ~{if defined(partition) then ("--partition " +  '"' + partition + '"') else ""} \
      ~{if defined(compare) then ("--compare " +  '"' + compare + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    p: ""
    k: ""
    partition: ""
    compare: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}