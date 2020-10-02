version 1.0

task Plasmidfinderpy {
  input {
    String? tmp
    String? o
    Array[File] i
  }
  command <<<
    plasmidfinder_py \
      ~{if defined(tmp) then ("-tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    tmp: ""
    o: ""
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}